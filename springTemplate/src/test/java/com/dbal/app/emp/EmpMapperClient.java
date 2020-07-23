package com.dbal.app.emp;

import java.util.List;
import java.util.Map;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dbal.app.emp.mapper.EmpMapper;



@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration(locations = "classpath:/config/*-context.xml")
public class EmpMapperClient {
	@Autowired EmpMapper empMapper;
	
	@Test
	public void insertEmp() {
		EmpVO vo = new EmpVO();
		vo.setFirstName("자두");
		vo.setLastName("라면");
		vo.setEmail("멍멍");
		vo.setHireDate("2020-06-12");
		vo.setJobId("IT_PROG");
		empMapper.insertEmpProc(vo);
		System.out.println(vo.getMsg());
	}
	
	@Ignore @Test
	public void getEmp() {
		EmpVO vo = new EmpVO();
		vo.setEmployeeId("100");
//		String first_name = empMapper.getName(100);
//		List maps = empMapper.getEmpMap();
		List<Map<String, Object>> list 
		= empMapper.getEmpMaps();
		System.out.println(list);
	}
}