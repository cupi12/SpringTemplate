package com.dbal.app.emp;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dbal.app.emp.mapper.EmpDAO;

@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration(locations = "classpath:/config/*-context.xml")
public class EmpDAOClient {
	
	@Autowired EmpDAO dao;
	   
	   @Test
	   public void empListTest() {
		   EmpVO empVO = new EmpVO();
//		   empVO.setDepartment_id("10");
//		   empVO.setEmployee_id("200");
//		   empVO.setSalary(3000);
//		   empVO.setFirst_name("diana");
		   empVO.setEmployeeIds(new Integer[] {100,101,102});
	      List<EmpVO> list = dao.empList(empVO);
	      System.out.println(list);
	   }
	   
//	   @Test
	   public void getEmp() {
	      EmpVO paraVO = new EmpVO();
	      paraVO.setEmployeeId("10");
	      EmpVO resultVO = dao.getEmp(paraVO);
	      System.out.println(resultVO);
	   }
	
	  // @Test
	/*
	 * public void insertEmp() { EmpVO paraVO = EmpVO.builder().
	 * employee_id("303").first_name("hi").last_name("o").first_name("jum").job_id(
	 * "IT_PROG").email("a@b.c").build(); paraVO.setEmployeeId("404");
	 * paraVO.setFirstName("hello"); paraVO.setEmail("world@hello.com");
	 * paraVO.setHireDate("2020-05-12"); paraVO.setLastName("world");
	 * paraVO.setJobId("IT_PROG"); dao.insertEmp(paraVO); }
	 */
}
