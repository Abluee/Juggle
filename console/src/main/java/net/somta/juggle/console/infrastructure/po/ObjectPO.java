package net.somta.juggle.console.infrastructure.po;

import net.somta.core.base.BaseModel;

/**
 * @author Gavin
 */
public class ObjectPO extends BaseModel {

    private Long id;

    private String objectCode;

    private String objectName;

    private String objectDesc;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getObjectCode() {
        return objectCode;
    }

    public void setObjectCode(String objectCode) {
        this.objectCode = objectCode;
    }

    public String getObjectName() {
        return objectName;
    }

    public void setObjectName(String objectName) {
        this.objectName = objectName;
    }

    public String getObjectDesc() {
        return objectDesc;
    }

    public void setObjectDesc(String objectDesc) {
        this.objectDesc = objectDesc;
    }
}