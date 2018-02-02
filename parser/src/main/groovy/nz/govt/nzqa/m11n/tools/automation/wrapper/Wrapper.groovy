package nz.govt.nzqa.m11n.tools.automation.wrapper

import nz.govt.nzqa.dbmigrate.model.MigrateWrapper

interface Wrapper {

    List <MigrateWrapper> parse(String splitFolderDir)
}