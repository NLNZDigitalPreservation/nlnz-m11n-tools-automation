package nz.govt.nzqa.m11n.tools.automation.wrapper.element

import nz.govt.nzqa.m11n.tools.automation.wrapper.WrapperElement
import nz.govt.nzqa.m11n.tools.automation.wrapper.WrapperElementVisitor

class Schema implements WrapperElement {

    private String name

    String getName(){
        return name
    }

    @Override
    void accept(WrapperElementVisitor visitor) {
        visitor.visit(this)
    }

}
