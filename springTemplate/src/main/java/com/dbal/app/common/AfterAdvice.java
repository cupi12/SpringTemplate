package com.dbal.app.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class AfterAdvice {
	@AfterReturning(pointcut = "BeforeAdvice.allpointcut()",returning = "returnObj")
	public void beforeLog(JoinPoint jp, Object returnObj) {
		String method = jp.getSignature().getName();
		String result = returnObj != null ? returnObj.toString() : "no return";
//		System.out.println("[사후 로그]" + "method name : " + method +", result : " + result );
	}
	

}
