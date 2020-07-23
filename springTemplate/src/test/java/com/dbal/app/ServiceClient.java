package com.dbal.app;

import static org.junit.Assert.assertEquals;

import java.util.Map;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dbal.app.dumy.DumyService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:/config/*-context.xml")
public class ServiceClient {

	@Autowired
	DumyService dumyService;
	
	@Before
	public void before() {
		//
	}
	
	@Test
	public void getTimeTest() {
		Map map = dumyService.getTime();
		assertEquals("aa", map.get("time"));
	}
	
	@Ignore
	public void getTimeTest2() {
		Map map = dumyService.getTime();
		assertEquals("aa", map.get("time"));
	}
	
}
