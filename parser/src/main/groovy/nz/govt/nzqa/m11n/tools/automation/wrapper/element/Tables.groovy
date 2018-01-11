package nz.govt.nzqa.m11n.tools.automation.wrapper.element

import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.m11n.tools.automation.parser.EntityParser
import nz.govt.nzqa.m11n.tools.automation.wrapper.WrapperElement
import nz.govt.nzqa.m11n.tools.automation.wrapper.WrapperElementVisitor

class Tables implements WrapperElement{

    private Map<Entity> entityMap

    Map<Entity> getEntityMap(List<String> fileNames){

        for (String fileName : fileNames){

            Entity entity = EntityParser.parse(new File(fileName))
            String entityName = EntityParser.getName()
            entityMap.add(entityName, value)
        }
        return entityMap
    }

    @Override
    void accept(WrapperElementVisitor visitor) {
        visitor.visit(this)
    }
}
