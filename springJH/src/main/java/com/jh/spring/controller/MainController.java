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

import com.jh.spring.domain.applog.MsTest;
import com.jh.spring.domain.applog.MsTestRepository;

@Controller
public class MainController {

	private static Logger logger = (Logger) LoggerFactory.getLogger(MainController.class);

	@Autowired
	private MsTestRepository msTestRepository;
	
	/*@Autowired
	private DataTwoRepository dataTwoRepository;*/

	
	
	@RequestMapping("/loginchk")
	public String loginChk(HttpSession session,Model model){
		logger.info("<<<<<<<<< loginchk >>>>>>>>>> ");
		
		session.setAttribute("id", "TestUserId");
		
		logger.info("session id >>>"+session.getId());
		logger.info("session New>>>"+session.isNew());
		logger.info("session user Id>>>"+(String)session.getAttribute("id"));

		return "index";
	}
	
	@RequestMapping("/test")
	@Transactional
	public @ResponseBody List<MsTest> loginTest(HttpSession session,Model model){
		logger.info("<<<<<<<<< loginTest >>>>>>>>>> ");
		
		return msTestRepository.findAll();
		//return "asdf";
	}

	
	@RequestMapping(value = "/")
	public String indexRedirect(HttpSession session, Model model) {
		if (session.getAttribute("id") == null){
			model.addAttribute("msg","정상 로그인 해 주시기 바랍니다.");
			return "msg";
		}

		return "index";
	}
	
}
