package nz.govt.nzqa.dbmigrate.model;

import org.junit.Before;
import org.junit.Test;

public class AttributeTest {

    Attribute attribute;

    @Before
    public void setUp(){
        attribute = new Attribute();
    }


    @Test
    public void attributeTest(){

        attribute.setType("Column");
        attribute.setName("inheriting_location");
        attribute.setAction("Create");
        attribute.setDataType("number_2");
//        attribute.setLength("");
//        attribute.setFraction("");
//        attribute.setDefaultValue("");
//        attribute.setDefaultValDataType("");
        attribute.setNull(false);

        System.out.println(attribute.toString());
    }

}
