package nz.govt.nzqa.dbmigrate.model;

public class Attribute {

    private String type;
    private String name;
    private String action;
    private String dataType;
    private String length;
    private String fraction;
    private String defaultValue;
    private String defaultValDataType;
    private boolean isNull;
    private boolean isIdentity;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getDataType() {
        return dataType;
    }

    public void setDataType(String dataType) {
        this.dataType = dataType;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }

    public String getFraction() {
        return fraction;
    }

    public void setFraction(String fraction) {
        this.fraction = fraction;
    }

    public String getDefaultValue() {
        return defaultValue;
    }

    public void setDefaultValue(String defaultValue) {
        this.defaultValue = defaultValue;
    }

    public String getDefaultValDataType() {
        return defaultValDataType;
    }

    public void setDefaultValDataType(String defaultValDataType) {
        this.defaultValDataType = defaultValDataType;
    }

    public boolean isNull() {
        return isNull;
    }

    public void setNull(boolean aNull) {
        isNull = aNull;
    }

    public boolean isIdentity() {
        return isIdentity;
    }

    public void setIdentity(boolean identity) {
        isIdentity = identity;
    }

    @Override
    public String toString() {
        StringBuffer buff = new StringBuffer("[type=" + type +
                ", name=" + name +
                ", action=" + action +
                ", dataType=" + dataType +
                ", length=" + length +
                ", fraction=" + fraction +
                ", defaultValue=" + defaultValue +
                ", defaultValDataType=" + defaultValDataType +
                ", isNull="+isNull +
                ", isIdentity="+isIdentity +
                "]");
        return buff.toString();
    }


}
