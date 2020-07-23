package com.dbal.app.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;

import com.dbal.app.dumy.DumyService;

@Controller
public class Scheduler {
	
	@Autowired
	DumyService dumyService;
	
//	@Scheduled(cron = "0/10 * * * * *")
	public void crontest1() {
		System.out.println("[스케쥴 실행]");
	}
	
	
	//54분, 30초, 40초, 50 로 시작
//	@Scheduled(fixedRate = 2000)
	public void crontest2() {
		System.out.println("[스케쥴 실행]");
	}
	
	
}
