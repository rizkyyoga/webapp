package com.app.webapp.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.app.webapp.bean.CommonResponse;
import com.app.webapp.bean.RegisterBean;
import com.app.webapp.entity.User;
import com.app.webapp.security.service.CSRFTokenService;
import com.app.webapp.service.UserService;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
public class AppController {

	Logger logger = Logger.getLogger(AppController.class);

	@Resource(name = "applicationResourcesProperties")
	public Properties message;

	@Autowired
	UserService userService;

	@Autowired
	CSRFTokenService csrfTokenService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		try {
			modelAndView.addObject("csrf", csrfTokenService.getTokenFromSession(request));
			modelAndView.addObject("registerBean", new RegisterBean());
			modelAndView.setViewName("register");
		} catch (Exception e) {
			e.printStackTrace();
			logger.info(e.getMessage());
			return new ModelAndView("500");
		}
		return modelAndView;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	@ResponseBody
	public CommonResponse register(@RequestParam(value = "mobileNumber", required = true) String mobileNumber,
			@RequestParam(value = "firstName", required = true) String firstName,
			@RequestParam(value = "lastName", required = true) String lastName,
			@RequestParam(value = "month", required = false) String month,
			@RequestParam(value = "date", required = false) String date,
			@RequestParam(value = "year", required = false) String year,
			@RequestParam(value = "gender", required = false) String gender,
			@RequestParam(value = "email", required = true) String email) {
		CommonResponse cr = new CommonResponse();
		try {
			String pattern = "^(62|0)\\d{9,12}$";
			Pattern r = Pattern.compile(pattern);
			Matcher m = r.matcher(mobileNumber);
			if (mobileNumber.isEmpty()) {
				cr.setCode("02");
				cr.setMessage(message.getProperty("message.empty.phone"));
			} else if (firstName.isEmpty()) {
				cr.setCode("02");
				cr.setMessage(message.getProperty("message.empty.firstName"));
			} else if (lastName.isEmpty()) {
				cr.setCode("02");
				cr.setMessage(message.getProperty("message.empty.lastName"));
			} else if (email.isEmpty()) {
				cr.setCode("02");
				cr.setMessage(message.getProperty("message.empty.email"));
			} else if (!m.find()) {
				cr.setCode("02");
				cr.setMessage(message.getProperty("message.wrong.phone"));
			} else if (userService.findByPhone(mobileNumber) != null) {
				cr.setCode("02");
				cr.setMessage(message.getProperty("message.exist.phone"));
			} else if (userService.findByUsername(email) != null) {
				cr.setCode("02");
				cr.setMessage(message.getProperty("message.exist.email"));
			} else {
				User user = new User();
				user.setPhone(mobileNumber);
				user.setFirstName(firstName);
				user.setLastName(lastName);
				user.setEmail(email.toLowerCase());
				user.setCreatedDate(new Date());
				if (!date.isEmpty() && !month.isEmpty() && !year.isEmpty()) {
					SimpleDateFormat sdf = new SimpleDateFormat("ddMMyyyy");
					user.setBirth(sdf.parse(date + month + year));
				}
				if (gender != null && !gender.isEmpty()) {
					user.setGender(gender);
				}
				userService.save(user);
				cr.setCode("00");
				cr.setMessage("OK");
			}
		} catch (Exception e) {
			cr.setCode("01");
			logger.info(e.getMessage());
			cr.setMessage(e.getMessage());
		}
		return cr;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		try {
			modelAndView.addObject("csrf", csrfTokenService.getTokenFromSession(request));
			modelAndView.addObject("registerBean", new RegisterBean());
			modelAndView.setViewName("login");
		} catch (Exception e) {
			e.printStackTrace();
			logger.info(e.getMessage());
			return new ModelAndView("500");
		}
		return modelAndView;
	}
}
