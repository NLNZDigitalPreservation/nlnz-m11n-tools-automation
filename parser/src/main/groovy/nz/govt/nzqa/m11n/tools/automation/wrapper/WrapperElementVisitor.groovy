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

interface WrapperElementVisitor {
    void visit(Schema schema)
    void visit(Defaults defaults)
    void visit(CustomDataTypes customDataTypes)
    void visit(Tables tables)
    void visit(Keys keys)
    void visit(Constraints constraints)
    void visit(Indexes indexes)
    void visit(Views views)
    void visit(Triggers triggers)
    void visit(Procedures procedures)
    void visit(Functions functions)
    void visit(Users users)
    void visit(Groups groups)
    void visit(Rules rules)
    void visit(Messages messages)
}
