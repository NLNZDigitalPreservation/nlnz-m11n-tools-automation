package nz.govt.nzqa.m11n.tools.automation.wrapper

import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
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

class WrapperElementGenerateVisitor implements WrapperElementVisitor{
    private MigrateWrapper wrapper = new MigrateWrapper()

    @Override
    void visit(Schema schema) {
        wrapper.schema = schema.getName()
    }

    @Override
    void visit(Defaults defaults) {
        wrapper.defaults = defaults.getEntityMap()
    }

    @Override
    void visit(CustomDataTypes customDataTypes) {
        wrapper.customDataTypes = customDataTypes.getEntityMap()
    }

    @Override
    void visit(Tables tables) {
        wrapper.tables = tables.getEntityMap()
    }

    @Override
    void visit(Keys keys) {
        wrapper.keys = keys.getEntityMap()
    }

    @Override
    void visit(Constraints constraints) {
        wrapper.constraints = constraints.getEntityMap()
    }

    @Override
    void visit(Indexes indexes) {
        wrapper.indexes= indexes.getIndexMap()
    }

    @Override
    void visit(Views views) {
        wrapper.views = views.getEntityMap()
    }

    @Override
    void visit(Triggers triggers) {
        wrapper.triggers = triggers.getUtillitiesMap()
    }

    @Override
    void visit(Procedures procedures) {
        wrapper.procedures = procedures.getUtillitiesMap()
    }

    @Override
    void visit(Functions functions) {
        wrapper.functions = functions.getUtillitiesMap()
    }

    @Override
    void visit(Users users) {
        wrapper.users = users.getEntityMap()
    }

    @Override
    void visit(Groups groups) {
        wrapper.groups = groups.getEntityMap()
    }

    @Override
    void visit(Rules rules) {
        wrapper.rules = rules.getEntityMap()
    }

    @Override
    void visit(Messages messages) {
        wrapper.messagess = messages.getEntityMap()
    }

    MigrateWrapper getMigrateWrapper(){
        return migrateWrapper
    }
}
