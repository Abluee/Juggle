package net.somta.juggle.core;

import net.somta.juggle.core.enums.FlowStatusEnum;
import net.somta.juggle.core.event.EventPublisher;
import net.somta.juggle.core.model.FlowElement;
import net.somta.juggle.core.variable.VariableManager;

import java.util.Map;

/**
 * 流程执行的上下文
 * @author husong
 * @date 2022/12/14
 **/
public class RuntimeContext {


    /**
     * 流程Key,全局唯一
     */
    private String flowKey;
    /**
     * 租户ID
     */
    private String tenantId;
    /**
     * 流程元素Map
     */
    private Map<String, FlowElement> flowElementMap;

    /**
     * 当前的流程元素
     */
    private FlowElement currentNode;

    /**
     * 下一个流程元素
     */
    private FlowElement nextNode;

    /**
     * 变量管理器
     */
    private VariableManager variableManager;

    /**
     * 流程状态
     */
    private FlowStatusEnum flowStatus;

    /**
     * 事件发布器
     */
    private EventPublisher eventPublisher;


    public String getFlowKey() {
        return flowKey;
    }

    public void setFlowKey(String flowKey) {
        this.flowKey = flowKey;
    }

    public String getTenantId() {
        return tenantId;
    }

    public void setTenantId(String tenantId) {
        this.tenantId = tenantId;
    }

    public Map<String, FlowElement> getFlowElementMap() {
        return flowElementMap;
    }

    public void setFlowElementMap(Map<String, FlowElement> flowElementMap) {
        this.flowElementMap = flowElementMap;
    }

    public FlowElement getCurrentNode() {
        return currentNode;
    }

    public void setCurrentNode(FlowElement currentNode) {
        this.currentNode = currentNode;
    }

    public FlowElement getNextNode() {
        return nextNode;
    }

    public void setNextNode(FlowElement nextNode) {
        this.nextNode = nextNode;
    }

    public VariableManager getVariableManager() {
        return variableManager;
    }

    public FlowStatusEnum getFlowStatus() {
        return flowStatus;
    }

    public void setFlowStatus(FlowStatusEnum flowStatus) {
        this.flowStatus = flowStatus;
    }

    public EventPublisher getEventPublisher() {
        return eventPublisher;
    }
}
