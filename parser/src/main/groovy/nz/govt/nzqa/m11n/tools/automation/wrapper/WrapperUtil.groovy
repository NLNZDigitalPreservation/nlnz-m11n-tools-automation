package nz.govt.nzqa.m11n.tools.automation.wrapper

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Index
import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.dbmigrate.model.Utilities

import java.beans.PropertyDescriptor

class WrapperUtil {

    void setField(MigrateWrapper migrateWrapper, Map<String, Object> fieldMap, String fieldName){
        PropertyDescriptor descriptor = new PropertyDescriptor(fieldName, migrateWrapper.getClass())
        descriptor.getWriteMethod().invoke(migrateWrapper, fieldMap)
    }

    String getDataModelName (Object dataModelObj){
        String name = ''
        if(dataModelObj instanceof Entity) {
            if (dataModelObj.getAction().equalsIgnoreCase(DBObjMapper.ACTION_ALTER.getSybaseKey())){
                name = (((Entity) dataModelObj).getConstraints().keySet().toArray()[0])
            }

            else {
                name = ((Entity) dataModelObj).getName()
            }
        }

        else if(dataModelObj instanceof Utilities) {
            name = ((Utilities)dataModelObj).getName()
        }

        else if(dataModelObj instanceof Index) {
            name = ((Index)dataModelObj).getName()
        }

        return name
    }
}
