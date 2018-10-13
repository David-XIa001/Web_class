package com.simple.core.service;
import com.simple.common.utils.Page;
import com.simple.core.po.StudentInfo;
public interface StudentService {
	// 查询学生列表
	public Page<StudentInfo> findStudentList(Integer page, Integer rows
                               );
	
	public int createStudent(StudentInfo Student);
	
	// 通过id查询学生
	public StudentInfo getStudentById(Integer id);
	// 更新学生
	public int updateStudent(StudentInfo Student);
	// 删除学生
	public int deleteStudent(Integer id);

}
