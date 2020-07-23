package com.dbal.app.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class BeforeAdvice {
	
	@Pointcut("execution(* com.dbal..*Impl.*(..))")
	public void allpointcut() {}
	
	@Before("allpointcut()")
	public void beforeLog(JoinPoint jp) {
		String method = jp.getSignature().getName();
		String arg = jp.getArgs() != null && jp.getArgs().length >0 ?
					 jp.getArgs()[0].toString() : "";
//		System.out.println("[사전 로그 @ 실행]" + "method name : " + method + ", args : " + arg);
	}
	
}
