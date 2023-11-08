package net.somta.juggle.core.variable;

import net.somta.juggle.core.enums.ErrorEnum;
import net.somta.juggle.core.exception.FlowException;
import net.somta.juggle.core.model.Variable;
import org.apache.commons.lang3.StringUtils;

import java.util.Map;

/**
 * 变量管理器
 * @author husong
 * @date 2022/2/13
 **/
public abstract class BaseVariableManager {
    private Map<String, Variable> variableSchemaMap;

    public BaseVariableManager(Map<String, Variable> variableSchemaMap) {
        this.variableSchemaMap = variableSchemaMap;
    }

    public Object getVariableValue(String key) throws FlowException{
        if(StringUtils.isEmpty(key)){
            throw new FlowException(ErrorEnum.ENV_KEY_ERROR);
        }
        return doGetVariableValue(key);
    }

    public Boolean setVariableValue(String key,Object value) throws FlowException {
        if(StringUtils.isEmpty(key)){
            throw new FlowException(ErrorEnum.ENV_KEY_ERROR);
        }
        return doSetVariableValue(key,value);
    }

    protected Variable getVariableSchema(String key){
        return variableSchemaMap.get(key);
    }

    protected abstract Object doGetVariableValue(String key);

    protected abstract Boolean doSetVariableValue(String key,Object value);

}