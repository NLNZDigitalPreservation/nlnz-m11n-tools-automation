package nz.govt.nzqa.m11n.tools.automation.wrapper.element

import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.m11n.tools.automation.wrapper.WrapperElement
import nz.govt.nzqa.m11n.tools.automation.wrapper.WrapperElementVisitor

class Rules implements WrapperElement{

    private Map<Entity> entityMap

    Map<Entity> getEntityMap(){
        return entityMap
    }

    @Override
    void accept(WrapperElementVisitor visitor) {
        visitor.visit(this)
    }
}
