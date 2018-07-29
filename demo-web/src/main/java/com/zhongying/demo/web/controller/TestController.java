package com.zhongying.demo.web.controller;

import com.zhongying.jf.ResConstants;
import com.zhongying.jf.result.Result;
import com.zhongying.jf.result.ResultSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(description = "测试")
@Controller
@RequestMapping("/v1/api/test")
public class TestController {

	private static final Logger logger = LoggerFactory
			.getLogger(TestController.class);


	@ApiOperation("测试参数")
	@RequestMapping(value = "demo_source_name", method = RequestMethod.POST)
	@ResponseBody
	public Result<?> testdemo_source_name() {
		logger.info("-------------");
		logger.error("-------------");
		logger.warn("-------------");
		logger.debug("-------------");
		Result<String> responseModel = new ResultSupport<String>();
		responseModel.setCode(ResConstants.SUCCESS.getCode());
		responseModel.setMsg(ResConstants.SUCCESS.getMsg());
		return responseModel;
	}

}
