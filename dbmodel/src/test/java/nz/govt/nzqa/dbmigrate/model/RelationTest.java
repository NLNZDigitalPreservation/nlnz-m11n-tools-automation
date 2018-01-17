package nz.govt.nzqa.dbmigrate.model;

import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

public class RelationTest {

    Relation relation;

    @Before
    public void setUp(){
        relation = new Relation();
    }

    @Test
    public void relationTest(){
        relation.setType("Grant");
        relation.setName("");
        relation.setAction("Select");
        relation.setGrantTo("eqa_user");
        relation.setGrantObjectDB("dbo");
        relation.setGrantObjectName("");
        List<String> l = new ArrayList<String>();
        l.add("Field1");
        l.add("Field2");
        l.add("Field3");
        relation.setGrantSubObjects(l);

        System.out.println(relation.toString());
    }
}
