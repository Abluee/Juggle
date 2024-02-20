package net.somta.juggle.core.dispatcher.impl;

import net.somta.juggle.core.FlowRuntimeContext;
import net.somta.juggle.core.model.FlowResult;
import net.somta.juggle.core.model.Variable;
import org.junit.jupiter.api.Test;

import java.util.HashMap;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;

class SyncDispatcherTest {

    @Test
    void doSend() {
        SyncDispatcher syncDispatcher = new SyncDispatcher();
        Map<String, Variable> variableSchemaMap = new HashMap<>();
        FlowRuntimeContext flowRuntimeContext = new FlowRuntimeContext(variableSchemaMap);
        FlowResult flowResult = syncDispatcher.doSend(flowRuntimeContext);
    }
}