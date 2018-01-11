package nz.govt.nzqa.m11n.tools.automation.wrapper.element

import nz.govt.nzqa.dbmigrate.model.Index
import nz.govt.nzqa.m11n.tools.automation.wrapper.WrapperElement
import nz.govt.nzqa.m11n.tools.automation.wrapper.WrapperElementVisitor

class Indexes implements WrapperElement{

    private Map<Index> indexMap

    Map<Index> getIndexMap(){
        return indexMap
    }

    @Override
    void accept(WrapperElementVisitor visitor) {
        visitor.visit(this)
    }
}
