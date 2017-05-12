package com.pae.maja.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pae.maja.helper.AjaxCheck;
import com.pae.maja.pmauser.dao.PMAUserService;
import com.pae.maja.pmauser.model.PMAUser;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);

	@Autowired
	PMAUserService pMAUserSerivce;

	@RequestMapping(value = "loginAf.do", method = RequestMethod.POST)
	@ResponseBody
	public AjaxCheck loginAf(HttpServletRequest request, PMAUser user, Model model) {
		PMAUser login = pMAUserSerivce.login(user);
		AjaxCheck check = new AjaxCheck();
		logger.info("Welcome LoginController loginAf!---- " + login);
		if (login != null && !login.getId().equals("")) {
			request.getSession().setAttribute("login", login);
			request.getSession().setMaxInactiveInterval(20 * 60);
			check.setMessage("SUCC");

		} else {
			request.getSession().invalidate();
			model.addAttribute("result", "아이디나 비밀번호를 확인해주세요");
			check.setMessage("FAIL");
		}
		return check;

	}

	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, Model model) {
		logger.info("Welcome LoginController logout! " + new Date());
		request.getSession().invalidate();
		model.addAttribute("head", "WELCOME");
		return "redirect:" + getDoRef(request.getHeader("Referer"));
	}//

	public String getDoRef(String ref) {
		if (ref.contains("/"))
			ref = ref.substring(ref.lastIndexOf("/"));

		return ref;
	}

	@RequestMapping(value = "getID.do", method = RequestMethod.POST)
	@ResponseBody
	public AjaxCheck getID(String id, Model model) throws Exception {
		// logger.info("Welcome LoginController getID! " + new Date());
		int count = pMAUserSerivce.idcheck(id);

		AjaxCheck checkResult = new AjaxCheck();
		if (count > 0) {
			checkResult.setMessage("SUCS");
		} else {
			checkResult.setMessage("FAIL");
		}
		return checkResult;
	}//

}
