package com.mydefault.app.sample.test.web;

import java.util.Date;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mydefault.app.generic.web.GenericController;
import com.mydefault.app.sample.test.service.TestService;
import com.mydefault.app.sample.test.service.TestVO;

/**
 * CREATE TABLE TB_CO_TEST( 
 * 		UUID VARCHAR(30) , 
 * 		TEXT VARCHAR(1000) , 
 * 		PRIMARY KEY (UUID) 
 * ) ;
 */
@Controller
@RequestMapping("/sample/test/*")
public class TestController extends GenericController<TestVO,TestService>{
	protected TestController() {
		super(TestVO.class,TestService.class);
	}
	// 배치 실행
	public void execute(Map<String, String> imap) throws Exception {

		System.out.println(new Date());
		System.out.println("start execute");
	}

}