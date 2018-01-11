package nz.govt.nzqa.dbmigrate.model;

public class Param {
    private String name;
    private String dataType;
    private String defaultValue;
    private String inOut;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDataType() {
        return dataType;
    }

    public void setDataType(String dataType) {
        this.dataType = dataType;
    }

    public String getDefaultValue() {
        return defaultValue;
    }

    public void setDefaultValue(String defaultValue) {
        this.defaultValue = defaultValue;
    }

    public String getInOut() {
        return inOut;
    }

    public void setInOut(String inOut) {
        this.inOut = inOut;
    }

    @Override
    public String toString() {
        StringBuffer buff = new StringBuffer("[name=" + name +
                ", dataType=" + dataType +
                ", defaultValue=" + defaultValue +
                ", inOut=" + inOut +
                "]");
        return buff.toString();
    }
}
