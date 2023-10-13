package net.somta.juggle.console.application.assembler;

import net.somta.juggle.console.domain.definition.FlowDefinitionAO;
import net.somta.juggle.console.interfaces.dto.FlowDefinitionInfoDTO;
import net.somta.juggle.console.interfaces.param.definition.FlowDefinitionAddParam;
import net.somta.juggle.console.interfaces.param.definition.FlowDefinitionContentParam;
import net.somta.juggle.console.interfaces.param.definition.FlowDefinitionUpdateParam;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

/**
 * @author husong
 */
@Mapper
public interface IFlowDefinitionAssembler {
    IFlowDefinitionAssembler IMPL = Mappers.getMapper(IFlowDefinitionAssembler.class);

    FlowDefinitionAO paramToAo(FlowDefinitionAddParam flowDefinitionAddParam);

    FlowDefinitionAO paramToAo(FlowDefinitionUpdateParam flowDefinitionUpdateParam);

    FlowDefinitionAO paramToAo(FlowDefinitionContentParam flowDefinitionContentParam);

    @Mapping(target = "flowInputParams", expression = "java(flowDefinitionAO.getParameterEntity().getInputParameterList())")
    @Mapping(target = "flowOutputParams", expression = "java(flowDefinitionAO.getParameterEntity().getOutputParameterList())")
    FlowDefinitionInfoDTO aoToDto(FlowDefinitionAO flowDefinitionAO);
}