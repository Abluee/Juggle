INSERT INTO `t_user` (`id`, `user_name`, `password`) VALUES (1, 'juggle', '24cb6bcbc65730e9650745d379613563');

INSERT INTO `t_domain` (`id`, `domain_code`, `domain_name`, `domain_desc`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (1, 'test_domain', '测试领域', '这是系统内置的一个测试领域', '2023-06-06 22:44:13', NULL, '2023-06-14 10:52:18', NULL);

INSERT INTO `t_flow_definition` (`id`, `flow_key`, `flow_name`, `flow_type`, `flow_content`, `remark`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (1, 'flow_sync', '测试同步流程', 'sync', '[{"key":"start_2s49s","name":"开始","elementType":"START","outgoings":["method_8w9r3"]},{"key":"method_8w9r3","name":"根据ID获取用户名称","elementType":"METHOD","desc":"这是了一个节点的描述","incomings":["start_2s49s"],"outgoings":["condition_83jd3"],"method":{"domainId":1,"methodId":1,"url":"http://127.0.0.1:8686/example/user/getUserById","requestType":"GET","requestContentType":"application/x-www-form-urlencoded","headerFillRules":[{"source":"env_id","sourceType":"VARIABLE","sourceDataType":{"type":"Integer","itemType":null,"structureSchema":null},"target":"userId","targetType":"INPUT_PARAM","targetDataType":{"type":"Integer","itemType":null,"structureSchema":null}}],"inputFillRules":[{"source":"env_id","sourceType":"VARIABLE","sourceDataType":{"type":"Integer","itemType":null,"structureSchema":null},"target":"userId","targetType":"INPUT_PARAM","targetDataType":{"type":"Integer","itemType":null,"structureSchema":null}}],"outputFillRules":[{"source":"name","sourceType":"OUTPUT_PARAM","sourceDataType":{"type":"String","itemType":null,"structureSchema":null},"target":"env_userName","targetType":"VARIABLE","targetDataType":{"type":"String","itemType":null,"structureSchema":null}}]}},{"key":"condition_83jd3","name":"判断用户名称","elementType":"CONDITION","desc":null,"incomings":["method_8w9r3"],"outgoings":["end_5g463"],"conditions":[{"conditionName":"判断用户名称是否为zhansan","conditionType":"CUSTOM","outgoing":"end_5g463","expression":"env_name==\"张三\"||string.contains(env_name,三)","conditionExpressions":[[{"envKey":"env_name","dataType":"String","operator":"equal","assignType":"constant","value":"张三"}],[{"envKey":"env_name","dataType":"String","operator":"contains","assignType":"constant","value":"三"}]]},{"conditionName":"判断用户名称是否为lisi","conditionType":"CUSTOM","outgoing":"method_23s45","expression":"env_name==\"lisi\"","conditionExpressions":[[{"envKey":"env_name","dataType":"String","operator":"equal","assignType":"constant","value":"lisi"}]]},{"conditionName":"默认else分支","conditionType":"DEFAULT","outgoing":"end_5g463","expression":null,"conditionExpressions":null}]},{"key":"method_23s45","name":"获取订单信息","elementType":"METHOD","desc":null,"incomings":["condition_83jd3"],"outgoings":["end_5g463"],"method":{"domainId":1,"methodId":2,"url":"http://127.0.0.1:8686/example/order/queryOrderByNo","requestType":"GET","requestContentType":null,"headerFillRules":null,"inputFillRules":null,"outputFillRules":null}},{"key":"end_5g463","name":"结束","elementType":"END","incomings":["condition_83jd3"]}]', NULL, NULL, NULL, '2024-03-07 00:10:02', NULL);
INSERT INTO `t_parameter` (`id`, `param_type`, `param_key`, `param_name`, `data_type`, `required`, `source_type`, `source_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (1, 2, 'userName', '流程出参-用户名称', '{"type":"String","itemType":null,"structureSchema":null}', NULL, 'flow', 1, NULL, NULL, NULL, NULL);
INSERT INTO `t_variable_info` (`id`, `flow_definition_id`, `env_key`, `env_name`, `env_type`, `data_type`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (1, 1, 'env_id', '入参-用户ID变量', 1, '{"type":"Integer","itemType":"","structureSchema":""}', NULL, NULL, NULL, NULL);
INSERT INTO `t_variable_info` (`id`, `flow_definition_id`, `env_key`, `env_name`, `env_type`, `data_type`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (2, 1, 'env_name', '入参-用户姓名变量', 1, '{"type":"String","itemType":"","structureSchema":""}', NULL, NULL, NULL, NULL);
INSERT INTO `t_variable_info` (`id`, `flow_definition_id`, `env_key`, `env_name`, `env_type`, `data_type`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (3, 1, 'env_userName', '流程出参-用户姓名变量', 2, '{"type":"String","itemType":"","structureSchema":""}', NULL, NULL, NULL, NULL);

INSERT INTO `t_flow_info` (`id`, `flow_key`, `flow_name`, `flow_type`, `remark`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (1, 'flow_sync', '测试同步流程', 'sync', '这是一个测试流程', NULL, NULL, NULL, NULL);
INSERT INTO `t_flow_version` (`id`, `flow_id`, `flow_version`, `flow_version_status`, `flow_content`, `inputs`, `outputs`, `variables`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (5, '1', 'v1', 0, '[{"key":"start_2s49s","name":"开始","elementType":"START","outgoings":["method_8w9r3"]},{"key":"method_8w9r3","name":"根据ID获取用户名称","elementType":"METHOD","desc":"这是了一个节点的描述","incomings":["start_2s49s"],"outgoings":["condition_83jd3"],"method":{"domainId":1,"methodId":1,"url":"http://127.0.0.1:8686/example/user/getUserById","requestType":"GET","requestContentType":"application/x-www-form-urlencoded","headerFillRules":[{"source":"env_id","sourceType":"VARIABLE","sourceDataType":{"type":"Integer","itemType":null,"structureSchema":null},"target":"userId","targetType":"INPUT_PARAM","targetDataType":{"type":"Integer","itemType":null,"structureSchema":null}}],"inputFillRules":[{"source":"env_id","sourceType":"VARIABLE","sourceDataType":{"type":"Integer","itemType":null,"structureSchema":null},"target":"userId","targetType":"INPUT_PARAM","targetDataType":{"type":"Integer","itemType":null,"structureSchema":null}}],"outputFillRules":[{"source":"name","sourceType":"OUTPUT_PARAM","sourceDataType":{"type":"String","itemType":null,"structureSchema":null},"target":"env_userName","targetType":"VARIABLE","targetDataType":{"type":"String","itemType":null,"structureSchema":null}}]}},{"key":"condition_83jd3","name":"判断用户名称","elementType":"CONDITION","desc":null,"incomings":["method_8w9r3"],"outgoings":["end_5g463"],"conditions":[{"conditionName":"判断用户名称是否为zhansan","conditionType":"CUSTOM","outgoing":"end_5g463","expression":"env_name==\"张三\"||string.contains(env_name,三)","conditionExpressions":[[{"envKey":"env_name","dataType":"String","operator":"equal","assignType":"constant","value":"张三"}],[{"envKey":"env_name","dataType":"String","operator":"contains","assignType":"constant","value":"三"}]]},{"conditionName":"判断用户名称是否为lisi","conditionType":"CUSTOM","outgoing":"method_23s45","expression":"env_name==\"lisi\"","conditionExpressions":[[{"envKey":"env_name","dataType":"String","operator":"equal","assignType":"constant","value":"lisi"}]]},{"conditionName":"默认else分支","conditionType":"DEFAULT","outgoing":"end_5g463","expression":null,"conditionExpressions":null}]},{"key":"method_23s45","name":"获取订单信息","elementType":"METHOD","desc":null,"incomings":["condition_83jd3"],"outgoings":["end_5g463"],"method":{"domainId":1,"methodId":2,"url":"http://127.0.0.1:8686/example/order/queryOrderByNo","requestType":"GET","requestContentType":null,"headerFillRules":null,"inputFillRules":null,"outputFillRules":null}},{"key":"end_5g463","name":"结束","elementType":"END","incomings":["condition_83jd3"]}]', '2023-10-12 23:50:20', NULL, '2023-10-12 23:51:21', NULL);

INSERT INTO t_api (id, domain_id, api_name, api_url, api_desc, api_request_type, api_request_content_type, created_at, created_by, updated_at, updated_by)
VALUES(1, 1, '获取用户信息', 'http://127.0.0.1:8686/example/user/getUserById', '获取用户信息-测试接口', 'GET', 'application/x-www-form-urlencoded', '2023-06-14 22:32:22', NULL, '2024-02-26 14:21:18', NULL);
INSERT INTO t_api (id, domain_id, api_name, api_url, api_desc, api_request_type, api_request_content_type, created_at, created_by, updated_at, updated_by)
VALUES(2, 1, '查询订单信息', 'http://127.0.0.1:8686/example/order/queryOrderByNo', '查询订单信息 -测试接口', 'GET', 'application/x-www-form-urlencoded', '2023-06-22 22:32:25', NULL, '2024-02-26 14:21:25', NULL);




INSERT INTO t_parameter
(id, param_type, param_key, param_name, data_type, required, source_type, source_id, created_at, created_by, updated_at, updated_by)
VALUES(109, 1, 'userId', '用户ID', '{"type":"Integer","itemType":null,"structureSchema":null}', 1, 'api', 1, '2023-11-04 01:24:01', NULL, '2024-02-26 14:05:20', NULL);
INSERT INTO t_parameter
(id, param_type, param_key, param_name, data_type, required, source_type, source_id, created_at, created_by, updated_at, updated_by)
VALUES(110, 2, 'id', '用户ID', '{"type":"Integer","itemType":null,"structureSchema":null}', NULL, 'api', 1, '2023-11-04 01:24:01', NULL, '2024-02-26 14:18:01', NULL);
INSERT INTO t_parameter
(id, param_type, param_key, param_name, data_type, required, source_type, source_id, created_at, created_by, updated_at, updated_by)
VALUES(111, 2, 'name', '姓名', '{"type":"String","itemType":null,"structureSchema":null}', NULL, 'api', 1, '2023-11-04 01:24:01', NULL, '2024-02-26 14:17:27', NULL);
INSERT INTO t_parameter
(id, param_type, param_key, param_name, data_type, required, source_type, source_id, created_at, created_by, updated_at, updated_by)
VALUES(112, 2, 'age', '年龄', '{"type":"Integer","itemType":null,"structureSchema":null}', NULL, 'api', 1, '2023-11-04 01:24:01', NULL, '2024-02-26 14:17:11', NULL);
INSERT INTO t_parameter
(id, param_type, param_key, param_name, data_type, required, source_type, source_id, created_at, created_by, updated_at, updated_by)
VALUES(113, 2, 'birthday', '生日', '{"type":"String","itemType":null,"structureSchema":null}', NULL, 'api', 1, '2023-11-14 22:41:24', NULL, '2024-02-26 14:16:50', NULL);

