package com.itheima.core.service.impl;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itheima.common.utils.Page;
import com.itheima.core.dao.StudentDao;
import com.itheima.core.po.StudentInfo;
import com.itheima.core.service.StudentService;
/**
 * 客户管理
 */
@Service("StudentService")
@Transactional
public class StudentServiceImpl implements StudentService {
	// 声明DAO属性并注入
	@Autowired
	private StudentDao StudentDao;
	// 客户列表
	public Page<StudentInfo> findStudentList(Integer page, Integer rows) {
		// 创建客户对象
		StudentInfo Student = new StudentInfo();
		// 当前页
		Student.setStart((page-1) * rows) ;
		// 每页数
		Student.setRows(rows);
		// 查询客户列表
		List<StudentInfo> Students = 
                            StudentDao.selectStudentList(Student);
		// 查询客户列表总记录数
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
	 * 创建客户
	 */
	@Override
	public int createStudent(StudentInfo Student) {
	    return StudentDao.createStudent(Student);
	}
	/**
	 * 通过id查询客户
	 */
	@Override
	public StudentInfo getStudentById(Integer id) {	
		StudentInfo Student = StudentDao.getStudentById(id);
	    return Student;		
	}
	/**
	 * 更新客户
	 */
	@Override
	public int updateStudent(StudentInfo Student) {
	    return StudentDao.updateStudent(Student);
	}
	/**
	 * 删除客户
	 */
	@Override
	public int deleteStudent(Integer id) {
	    return StudentDao.deleteStudent(id);	
	}

	
}
