package nz.govt.nzqa.m11n.tools.automation.wrapper

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Index
import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.dbmigrate.model.Utilities

import java.beans.PropertyDescriptor

class WrapperUtil {

    void setField(MigrateWrapper migrateWrapper, Map<String, Object> fieldMap, String fieldName) {
        PropertyDescriptor descriptor = new PropertyDescriptor(fieldName, migrateWrapper.getClass())
        descriptor.getWriteMethod().invoke(migrateWrapper, fieldMap)
    }

    String getDataModelName(Object dataModelObj) {
        String name = ''
        if (dataModelObj instanceof Entity) {
            if (dataModelObj.getAction() != null && dataModelObj.getAction().equalsIgnoreCase(DBObjMapper.ACTION_ALTER.getSybaseKey())) {
                name = (((Entity) dataModelObj).getConstraints().keySet().toArray()[0])
            } else {
                name = ((Entity) dataModelObj).getName()
            }
        } else if (dataModelObj instanceof Utilities) {
            name = ((Utilities) dataModelObj).getName()
        } else if (dataModelObj instanceof Index) {
            name = ((Index) dataModelObj).getName()
        }

        return name
    }

    Map<String, Object> putDataModelInMap(Map<String, Object> fieldMap, Object dataModelObj, String dataModelName) {

        if (fieldMap.get(dataModelName) == null) {
            fieldMap.put(dataModelName, dataModelObj)
        }

        else {
            //Avoid replace create statement
            if (dataModelObj instanceof Entity) {
                Entity existingDataModelObj = fieldMap.get(dataModelName)
                if (existingDataModelObj.getAction().equalsIgnoreCase(DBObjMapper.ACTION_CREATE.getObjKey())
                        && dataModelObj.getAction().equalsIgnoreCase(DBObjMapper.ACTION_DROPONLY.getObjKey())) {
                    return fieldMap
                }

                else {
                    fieldMap.put(dataModelName, dataModelObj)
                }
            }

            else if (dataModelObj instanceof Utilities) {
                Utilities existingDataModelObj = fieldMap.get(dataModelName)
                if (existingDataModelObj.getAction().equalsIgnoreCase(DBObjMapper.ACTION_CREATE.getObjKey())
                        && dataModelObj.getAction().equalsIgnoreCase(DBObjMapper.ACTION_DROPONLY.getObjKey())) {
                    return fieldMap
                }

                else {
                    fieldMap.put(dataModelName, dataModelObj)
                }
            }

            else if (dataModelObj instanceof Index) {
                    Index existingDataModelObj = fieldMap.get(dataModelName)
                if (existingDataModelObj.getAction().equalsIgnoreCase(DBObjMapper.ACTION_CREATE.getObjKey())
                        && dataModelObj.getAction().equalsIgnoreCase(DBObjMapper.ACTION_DROP.getObjKey())) {
                    return fieldMap
                }

                else {
                    fieldMap.put(dataModelName, dataModelObj)
                }

            }
        }
        return fieldMap
    }
}
