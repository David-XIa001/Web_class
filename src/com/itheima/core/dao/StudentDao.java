package com.itheima.core.dao;
import java.util.List;
import com.itheima.core.po.StudentInfo;
/**
 * Student接口
 */
public interface StudentDao {
    // 获取学生列表
	public List<StudentInfo> selectStudentList(StudentInfo studentInfo);
	// 获取学生数量
	public Integer selectStudentListCount(StudentInfo studentInfo);
	// 创建学生信息
	public int createStudent(StudentInfo studentInfo);
	// 通过id查询学生信息
	public StudentInfo getStudentById(Integer id);
	// 更新学生信息
	public int updateStudent(StudentInfo studentInfo);
	// 删除学生信息
	int deleteStudent (Integer id);
}
