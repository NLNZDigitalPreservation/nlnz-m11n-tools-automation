package nz.govt.nzqa.m11n.tools.automation.wrapper

import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Constraints
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.CustomDataTypes
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Defaults
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Functions
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Groups
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Indexes
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Keys
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Messages
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Procedures
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Rules
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Schema
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Tables
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Triggers
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Users
import nz.govt.nzqa.m11n.tools.automation.wrapper.element.Views

class Wrapper implements WrapperElement {
    WrapperElement[] elements

    Wrapper(){
        this.elements = [
            new Schema(),
            new Defaults(),
            new CustomDataTypes(),
            new Tables(),
            new Keys(),
            new Constraints(),
            new Indexes(),
            new Views(),
            new Triggers(),
            new Procedures(),
            new Functions(),
            new Users(),
            new Groups(),
            new Rules(),
            new Messages()
        ]
    }

    void accept(final WrapperElementVisitor visitor){
        for(WrapperElement element : elements){
            element.accept(visitor)
        }
        visitor.visit(this)
    }
}
