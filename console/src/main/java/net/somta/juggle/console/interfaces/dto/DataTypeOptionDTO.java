package net.somta.juggle.console.interfaces.dto;

/**
 * @author husong
 */
public class DataTypeOptionDTO {
    private Long id;
    private Integer dataTypeClassify;
    private String type;

    private String displayName;

    private String objectKey;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getDataTypeClassify() {
        return dataTypeClassify;
    }

    public void setDataTypeClassify(Integer dataTypeClassify) {
        this.dataTypeClassify = dataTypeClassify;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getObjectKey() {
        return objectKey;
    }

    public void setObjectKey(String objectKey) {
        this.objectKey = objectKey;
    }

    @Override
    public String toString() {
        return "DataTypeOptionDTO{" +
                "type='" + type + '\'' +
                ", displayName='" + displayName + '\'' +
                ", objectKey='" + objectKey + '\'' +
                '}';
    }
}
