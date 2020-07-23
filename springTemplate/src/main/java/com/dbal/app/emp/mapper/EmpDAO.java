package com.dbal.app.emp.mapper;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dbal.app.emp.EmpVO;

@Repository // @Component를 상속받아서 만들어진 annotation이다. <빈등록, connection 과 관련된 설정>
public class EmpDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public List<EmpVO> empList(EmpVO empVO) {
		return mybatis.selectList("com.dbal.app.emp.mapper.EmpDAO.empList", empVO);
	}

	public EmpVO getEmp(EmpVO empVO) {
		return mybatis.selectOne("com.dbal.app.emp.mapper.EmpDAO.getEmp", empVO);
	}
	
	public void insertEmp(EmpVO empVO) {
		mybatis.insert("com.dbal.app.emp.mapper.EmpDAO.insertEmp", empVO);
	}
	
	/*
	 * public int getCnt() { return mybatis. } public Map getEmpMap() {
	 * 
	 * }
	 */
}
