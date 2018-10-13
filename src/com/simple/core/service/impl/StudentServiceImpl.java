package com.simple.core.service.impl;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.simple.common.utils.Page;
import com.simple.core.dao.StudentDao;
import com.simple.core.po.StudentInfo;
import com.simple.core.service.StudentService;
/**
 * 学生管理
 */
@Service("StudentService")
@Transactional
public class StudentServiceImpl implements StudentService {
	// 声明DAO属性并注入
	@Autowired
	private StudentDao StudentDao;
	// 学生列表
	public Page<StudentInfo> findStudentList(Integer page, Integer rows) {
		// 创建学生对象
		StudentInfo Student = new StudentInfo();
		// 当前页
		Student.setStart((page-1) * rows) ;
		// 每页数
		Student.setRows(rows);
		// 查询学生列表
		List<StudentInfo> Students = 
                            StudentDao.selectStudentList(Student);
		// 查询学生列表总记录数
		Integer count = StudentDao.selectStudentListCount(Student);
		// 创建Page返回对象
		Page<StudentInfo> result = new Page<>();
		result.setPage(page);
		result.setRows(Students);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	/**
	 * 创建学生
	 */
	@Override
	public int createStudent(StudentInfo Student) {
	    return StudentDao.createStudent(Student);
	}
	/**
	 * 通过id查询学生
	 */
	@Override
	public StudentInfo getStudentById(Integer id) {	
		StudentInfo Student = StudentDao.getStudentById(id);
	    return Student;		
	}
	/**
	 * 更新学生
	 */
	@Override
	public int updateStudent(StudentInfo Student) {
	    return StudentDao.updateStudent(Student);
	}
	/**
	 * 删除学生
	 */
	@Override
	public int deleteStudent(Integer id) {
	    return StudentDao.deleteStudent(id);	
	}

	
}
