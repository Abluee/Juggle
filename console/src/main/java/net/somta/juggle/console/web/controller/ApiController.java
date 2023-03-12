package net.somta.juggle.console.web.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import net.somta.core.protocol.ResponseDataResult;
import net.somta.core.protocol.ResponsePaginationDataResult;
import net.somta.juggle.console.model.Api;
import net.somta.juggle.console.model.param.VariableParam;
import net.somta.juggle.console.service.IApiService;
import net.somta.juggle.console.service.IVariableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Tag(name = "API接口")
@RestController
@RequestMapping("/v1/api")
public class ApiController {

    @Autowired
    private IApiService apiService;

    /**
     * 获取API列表
     * @return Boolean
     */
    @Operation(summary = "获取Api列表")
    @PostMapping("/list")
    public ResponsePaginationDataResult<List<Api>> getApiList(){
        apiService.getApiList();
        return null;
    }

}
