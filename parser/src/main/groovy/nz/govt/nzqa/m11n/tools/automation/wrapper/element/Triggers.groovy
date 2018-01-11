package nz.govt.nzqa.m11n.tools.automation.wrapper.element

import nz.govt.nzqa.dbmigrate.model.Utilities
import nz.govt.nzqa.m11n.tools.automation.wrapper.WrapperElement
import nz.govt.nzqa.m11n.tools.automation.wrapper.WrapperElementVisitor

class Triggers implements WrapperElement{

    private Map<Utilities> utilitiesMap

    Map<Utilities> getUtillitiesMap(){
        return utilitiesMap
    }

    @Override
    void accept(WrapperElementVisitor visitor) {
        visitor.visit(this)
    }
}
