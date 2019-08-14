package com.app.webapp.controller;

import static org.junit.Assert.assertEquals;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.app.webapp.bean.CommonResponse;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:web-servlet.xml" })
public class AppTest {

	Logger logger = Logger.getLogger(AppTest.class);

	@Test
	public void registerTest() {
		AppController appController = new AppController();
		CommonResponse cr = appController.register("6287889609730", "Rizky Yoga", "Oktora", "", "", "", "",
				"rizkyyoga0@gmail.com");
		assertEquals("01", cr.getCode());
	}
}
