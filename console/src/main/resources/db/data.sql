INSERT INTO `t_user` (`id`, `user_name`, `password`) VALUES (1, 'juggle', 'a15fde2baca4e8fe74c483862720bb9e');

INSERT INTO `t_data_type_info` (`id`, `data_type_classify`, `data_type`, `display_name`, `object_key`, `object_structure`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (1, 1, 'Integer', '数字', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_data_type_info` (`id`, `data_type_classify`, `data_type`, `display_name`, `object_key`, `object_structure`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (2, 1, 'String', '字符串', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_data_type_info` (`id`, `data_type_classify`, `data_type`, `display_name`, `object_key`, `object_structure`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (10, 2, 'List', '集合', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_data_type_info` (`id`, `data_type_classify`, `data_type`, `display_name`, `object_key`, `object_structure`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (11, 2, 'Set', 'Set', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_data_type_info` (`id`, `data_type_classify`, `data_type`, `display_name`, `object_key`, `object_structure`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (12, 2, 'Map', 'Map', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `t_domain` (`id`, `domain_code`, `domain_name`, `domain_desc`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (1, 'test_domain', '测试领域', '这是系统内置的一个测试领域', '2023-06-06 22:44:13', NULL, '2023-06-14 10:52:18', NULL);

INSERT INTO `t_flow_definition` (`id`, `flow_key`, `flow_name`, `flow_type`, `flow_content`, `remark`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (1, 'flow_sync', '测试同步流程', 'sync', '[{\"key\":\"start_2s49s\",\"elementType\":\"START\",\"outgoings\":[\"method_8w9r3\"]},{\"key\":\"method_8w9r3\",\"elementType\":\"METHOD\",\"incomings\":[\"start_2s49s\"],\"outgoings\":[\"condition_83jd3\"],\"method\":{\"url\":\"http://127.0.0.1:8686/test/getUserById\",\"requestType\":\"GET\",\"requestContentType\":null,\"inputFillRules\":[{\"source\":\"env_id\",\"sourceType\":\"VARIABLE\",\"sourceDataType\":{\"type\":\"Integer\",\"itemType\":null,\"structureSchema\":null},\"target\":\"id\",\"targetType\":\"FLOWINPUT\",\"targetDataType\":{\"type\":\"Integer\",\"itemType\":null,\"structureSchema\":null}}],\"outputFillRules\":[{\"source\":\"name\",\"sourceType\":\"OUTPUTPARAM\",\"sourceDataType\":{\"type\":\"String\",\"itemType\":null,\"structureSchema\":null},\"target\":\"env_userName\",\"targetType\":\"VARIABLE\",\"targetDataType\":{\"type\":\"String\",\"itemType\":null,\"structureSchema\":null}}]}},{\"key\":\"condition_83jd3\",\"elementType\":\"CONDITION\",\"incomings\":[\"method_8w9r3\"],\"outgoings\":[\"end_5g463\"],\"conditions\":{\"end_5g463\":\"env_name==\"zhansan\"\"}},{\"key\":\"end_5g463\",\"elementType\":\"END\",\"incomings\":[\"condition_83jd3\"]}]', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_parameter` (`id`, `param_type`, `param_key`, `param_name`, `data_type`, `required`, `source_type`, `source_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (1, 2, 'userName', '流程出参-用户名称', '{\"type\":\"String\",\"itemType\":null,\"structureSchema\":null}', NULL, 'flow', 1, NULL, NULL, NULL, NULL);
INSERT INTO `t_variable_info` (`id`, `flow_definition_id`, `env_key`, `env_name`, `env_type`, `data_type`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (1, 1, 'env_id', '入参-用户ID变量', 1, '{\"type\":\"Integer\",\"itemType\":\"\",\"structureSchema\":\"\"}', NULL, NULL, NULL, NULL);
INSERT INTO `t_variable_info` (`id`, `flow_definition_id`, `env_key`, `env_name`, `env_type`, `data_type`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (2, 1, 'env_name', '入参-用户姓名变量', 1, '{\"type\":\"String\",\"itemType\":\"\",\"structureSchema\":\"\"}', NULL, NULL, NULL, NULL);
INSERT INTO `t_variable_info` (`id`, `flow_definition_id`, `env_key`, `env_name`, `env_type`, `data_type`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (3, 1, 'env_userName', '流程出参-用户姓名变量', 2, '{\"type\":\"String\",\"itemType\":\"\",\"structureSchema\":\"\"}', NULL, NULL, NULL, NULL);

INSERT INTO `t_flow_info` (`id`, `flow_key`, `flow_name`, `flow_type`, `remark`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (1, 'flow_sync', '测试同步流程', 'sync', '这是一个测试流程', NULL, NULL, NULL, NULL);
INSERT INTO `t_flow_version` (`id`, `flow_id`, `flow_version`, `flow_version_status`, `flow_content`, `inputs`, `outputs`, `variables`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES (5, '1', 'v1', 0, '[{\"key\":\"start_2s49s\",\"elementType\":\"START\",\"outgoings\":[\"method_8w9r3\"]},{\"key\":\"method_8w9r3\",\"elementType\":\"METHOD\",\"incomings\":[\"start_2s49s\"],\"outgoings\":[\"condition_83jd3\"],\"method\":{\"url\":\"http://127.0.0.1:8686/test/getUserById\",\"requestType\":\"GET\",\"requestContentType\":null,\"inputFillRules\":[{\"source\":\"env_id\",\"sourceType\":\"VARIABLE\",\"sourceDataType\":{\"type\":\"Integer\",\"itemType\":null,\"structureSchema\":null},\"target\":\"id\",\"targetType\":\"FLOWINPUT\",\"targetDataType\":{\"type\":\"Integer\",\"itemType\":null,\"structureSchema\":null}}],\"outputFillRules\":[{\"source\":\"name\",\"sourceType\":\"OUTPUTPARAM\",\"sourceDataType\":{\"type\":\"String\",\"itemType\":null,\"structureSchema\":null},\"target\":\"env_userName\",\"targetType\":\"VARIABLE\",\"targetDataType\":{\"type\":\"String\",\"itemType\":null,\"structureSchema\":null}}]}},{\"key\":\"condition_83jd3\",\"elementType\":\"CONDITION\",\"incomings\":[\"method_8w9r3\"],\"outgoings\":[\"end_5g463\"],\"conditions\":{\"end_5g463\":\"env_name==zhansan\"}},{\"key\":\"end_5g463\",\"elementType\":\"END\",\"incomings\":[\"condition_83jd3\"]}]', '[]', '[{\"key\":\"userName\",\"name\":\"流程出参-用户名称\",\"dataType\":{\"type\":\"String\",\"itemType\":null,\"structureSchema\":null}}]', '[{\"key\":\"env_id\",\"name\":\"入参-用户ID变量\",\"dataType\":{\"type\":\"Integer\",\"itemType\":\"\",\"structureSchema\":\"\"},\"defaultValue\":null},{\"key\":\"env_name\",\"name\":\"入参-用户姓名变量\",\"dataType\":{\"type\":\"String\",\"itemType\":\"\",\"structureSchema\":\"\"},\"defaultValue\":null},{\"key\":\"env_userName\",\"name\":\"流程出参-用户姓名变量\",\"dataType\":{\"type\":\"String\",\"itemType\":\"\",\"structureSchema\":\"\"},\"defaultValue\":null}]', '2023-10-12 23:50:20', NULL, '2023-10-12 23:51:21', NULL);



