package com.itheima.core.service;
import com.itheima.common.utils.Page;
import com.itheima.core.po.StudentInfo;
public interface StudentService {
	// 查询客户列表
	public Page<StudentInfo> findStudentList(Integer page, Integer rows
                               );
	
	public int createStudent(StudentInfo Student);
	
	// 通过id查询客户
	public StudentInfo getStudentById(Integer id);
	// 更新客户
	public int updateStudent(StudentInfo Student);
	// 删除客户
	public int deleteStudent(Integer id);

}
