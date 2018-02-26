package nz.govt.nzqa.dbmigrate.model;

import java.util.List;

public class Relation {
    private String type;
    private String name;
    private String action;
    private String grantTo;
    private String grantObjectDB; //DB name of the object to be Granted
    private String grantObjectName;
    private List<String> grantSubObjects;

    private boolean isTypeReference; //Used to identify Custom Data Type default grant

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getGrantTo() {
        return grantTo;
    }

    public void setGrantTo(String grantTo) {
        this.grantTo = grantTo;
    }

    public String getGrantObjectDB() {
        return grantObjectDB;
    }

    public void setGrantObjectDB(String grantObjectDB) {
        this.grantObjectDB = grantObjectDB;
    }

    public String getGrantObjectName() {
        return grantObjectName;
    }

    public void setGrantObjectName(String grantObjectName) {
        this.grantObjectName = grantObjectName;
    }

    public List<String> getGrantSubObjects() {
        return grantSubObjects;
    }

    public void setGrantSubObjects(List<String> grantSubObjects) {
        this.grantSubObjects = grantSubObjects;
    }

    public boolean isTypeReference() {
        return isTypeReference;
    }

    public void setTypeReference(boolean typeReference) {
        isTypeReference = typeReference;
    }

    @Override
    public String toString() {
        StringBuffer buff = new StringBuffer("[type=" + type +
                ", name=" + name +
                ", action=" + action +
                ", grantTo=" + grantTo +
                ", grantObjectDB=" + grantObjectDB +
                ", grantObjectName=" + grantObjectName +
                ", isTypeReference=" + isTypeReference +
                ", grantSubObjects={");
                for (String a: grantSubObjects) {
                    buff.append(a + ",");
                }
                buff.append("}]");
        return buff.toString();
    }
}
