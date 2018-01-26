package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.Deparser

class ConstraintDeparser implements Deparser{

    Constraint constraint
    String outputStatement

    ConstraintDeparser(Constraint constraint1) {
        this.constraint = constraint1
    }

    String deParse() {
        frameOutputStatement()
        return outputStatement
    }

    void frameOutputStatement(){
        StringBuffer buff = new StringBuffer("")

        switch (constraint.getType()) {
            case(DBObjMapper.CONSTRAINT_PRIMARYKEY.getObjKey()):
                switch (constraint.getAction()) {
                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        buff = frameKeyConstraint(constraint, DBObjMapper.CONSTRAINT_PRIMARYKEY, DBObjMapper.ACTION_CREATE)
                        break
                    case (DBObjMapper.ACTION_ADD.getObjKey()):
                        buff = frameKeyConstraint(constraint, DBObjMapper.CONSTRAINT_PRIMARYKEY, DBObjMapper.ACTION_ADD)
                        break
                }
                break
            case(DBObjMapper.CONSTRAINT_UNIQUE.getObjKey()):
                switch (constraint.getAction()) {
                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        buff = frameKeyConstraint(constraint, DBObjMapper.CONSTRAINT_UNIQUE, DBObjMapper.ACTION_CREATE)
                        break
                    case (DBObjMapper.ACTION_ADD.getObjKey()):
                        buff = frameKeyConstraint(constraint, DBObjMapper.CONSTRAINT_UNIQUE, DBObjMapper.ACTION_ADD)
                        break
                }
                break
            case(DBObjMapper.CONSTRAINT_FOREIGNKEY.getObjKey()):
                switch (constraint.getAction()) {
                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        buff = frameFKConstraint(constraint, DBObjMapper.ACTION_CREATE)
                        break
                    case (DBObjMapper.ACTION_ADD.getObjKey()):
                        buff = frameFKConstraint(constraint, DBObjMapper.ACTION_ADD)
                        break
                }
                break
            case(DBObjMapper.CONSTRAINT_CHECK.getObjKey()):
                switch (constraint.getAction()) {
                    case (DBObjMapper.ACTION_ADD.getObjKey()):
                        buff.append("\n ")
                        buff.append(DBObjMapper.ACTION_ADD.getMssqlKey() + " ")
                        buff.append(DBObjMapper.KEY_CONSTRAINT.getMssqlKey())
                        buff.append(" [$constraint.name] ")
                        buff.append(DBObjMapper.CONSTRAINT_CHECK.getMssqlKey())

                        buff.append(" (" )
                        CriteriaDeparser criDP = new CriteriaDeparser(constraint.criteria);
                        buff.append(criDP.deParse())
                        buff.append(") ")

                        break
                }
                break
        }

        outputStatement = buff.toString();
    }

    private StringBuffer frameKeyConstraint(Constraint constraint, DBObjMapper.ObjMapper type, DBObjMapper.ObjMapper action){
        StringBuffer buff = new StringBuffer("")
        buff.append("\n ")
        if (action.getObjKey() == DBObjMapper.ACTION_ADD.getObjKey()) {
            buff.append(DBObjMapper.ACTION_ADD.getMssqlKey() + " ")
        }
        buff.append(DBObjMapper.KEY_CONSTRAINT.getMssqlKey())
        buff.append(" [$constraint.name] ")
        buff.append(type.getMssqlKey())

        switch (constraint.getSubType()) {
            case (DBObjMapper.CONSTRAINT_CLUSTERED.getObjKey()):
                buff.append(" " + DBObjMapper.CONSTRAINT_CLUSTERED.getObjKey() + " ")
                break
            case (DBObjMapper.CONSTRAINT_NONCLUSTERED.getObjKey()):
                buff.append(" " + DBObjMapper.CONSTRAINT_NONCLUSTERED.getObjKey() + " ")
                break
        }

        buff.append("\n( ")
        boolean firstValue = true;
        for (Object o: constraint.getFields()) {
            if (firstValue) {
                buff.append("\n[ " + o.toString() + "] ASC")
                firstValue = false;
            } else {
                buff.append("\n, [" + o.toString() + "] ASC");
            }
        }
        buff.append("\n) ")
        return buff
    }

    private StringBuffer frameFKConstraint(Constraint constraint, DBObjMapper.ObjMapper action){
        StringBuffer buff = new StringBuffer("")
        buff.append("\n ")
        if (action.getObjKey() == DBObjMapper.ACTION_ADD.getObjKey()) {
            buff.append(DBObjMapper.ACTION_ADD.getMssqlKey() + " ")
        }
        buff.append(DBObjMapper.KEY_CONSTRAINT.getMssqlKey())
        buff.append(" [$constraint.name] ")
        buff.append(DBObjMapper.CONSTRAINT_FOREIGNKEY.getMssqlKey())
        buff.append(" ( ")
        boolean firstValue = true
        for (Object o: constraint.getFields()) {
            if (firstValue) {
                buff.append("[ " + o.toString() + "]")
                firstValue = false
            } else {
                buff.append(", [" + o.toString() + "]");
            }
        }
        buff.append(") ")

        buff.append("\n ")
        buff.append(DBObjMapper.CONSTRAINT_REFERENCES.getMssqlKey())
        //TODO add db name
        //buff.append(" [" + constraint.getDataBaseName + "].")
        buff.append(" [" + constraint.getReferenceTableName()+ "] ")
        buff.append(" ( ")
        firstValue = true
        for (Object o: constraint.getReferenceFields()) {
            if (firstValue) {
                buff.append("[ " + o.toString() + "]")
                firstValue = false
            } else {
                buff.append(", [" + o.toString() + "]");
            }
        }
        buff.append(") ")
        return buff
    }

}
