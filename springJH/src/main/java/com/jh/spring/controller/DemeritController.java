package com.jh.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ch.qos.logback.classic.Logger;

import com.jh.spring.domain.comdb.DataTwoRepository;
import com.jh.spring.domain.comdb.DataTwoTest;

@Controller
@RequestMapping("/demerit")
public class DemeritController {

	@Autowired
	private DataTwoRepository dataTwoRepository;
	
	private static Logger logger = (Logger) LoggerFactory.getLogger(DemeritController.class);
	
	@RequestMapping("/dashboard")
	public String index(Model model){
		logger.info("<<<<<<<<< demerit/Dashboard here >>>>>>>>>> ");
		return "demerit/dashBoard";
	}

	@RequestMapping("/idcardlist")
	public String idcardlist(Model model){
		logger.info("<<<<<<<<< demerit/idcardlist here >>>>>>>>>> ");
		return "demerit/idCardList";
	}
	
	@RequestMapping("/d2test")
	@Transactional
	public @ResponseBody List<DataTwoTest> dataTwoTest(HttpSession session,Model model){
		logger.info("<<<<<<<<< dataTwoTest >>>>>>>>>> ");
		
		return dataTwoRepository.findAll();
	//	return "aasdf;";
	}
	
}
