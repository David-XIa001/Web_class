package com.itheima.core.web.controller;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itheima.common.utils.Page;
import com.itheima.core.po.BaseDict;
import com.itheima.core.po.StudentInfo;
import com.itheima.core.po.User;
import com.itheima.core.service.StudentService;
/**
 * 客户管理控制器类
 */
@Controller
public class StudentController {
	// 依赖注入
	@Autowired
	private StudentService StudentService;
	/**
	 *  客户列表
	 */
	@RequestMapping(value = "/student/list.action")
	public String list(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			 Model model) {
		// 条件查询所有客户
		Page<StudentInfo> Students = StudentService
				.findStudentList(page, rows);
		model.addAttribute("page", Students);
		return "main";
	}
	
	/**
	 * 创建客户
	 */
	@RequestMapping("/Student/create.action")
	@ResponseBody
	public String StudentCreate(StudentInfo Student,HttpSession session) {
	    // 获取Session中的当前用户信息
	    User user = (User) session.getAttribute("USER_SESSION");
	    // 将当前用户id存储在客户对象中
	    //Student.setCust_create_id(user.getUser_id());
	    // 创建Date对象
	    Date date = new Date();
	    // 得到一个Timestamp格式的时间，存入mysql中的时间格式“yyyy/MM/dd HH:mm:ss”
	    Timestamp timeStamp = new Timestamp(date.getTime());
	    Student.setStu_createtime(timeStamp);
	    // 执行Service层中的创建方法，返回的是受影响的行数
	    int rows = StudentService.createStudent(Student);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}

	/**
	 * 通过id获取客户信息
	 */
	@RequestMapping("/Student/getStudentById.action")
	@ResponseBody
	public StudentInfo getStudentById(Integer id) {
	    StudentInfo Student = StudentService.getStudentById(id);
	    return Student;
	}
	/**
	 * 更新客户
	 */
	@RequestMapping("/Student/update.action")
	@ResponseBody
	public String StudentUpdate(StudentInfo Student) {
	    int rows = StudentService.updateStudent(Student);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}

	/**
	 * 删除客户
	 */
	@RequestMapping("/Student/delete.action")
	@ResponseBody
	public String StudentDelete(Integer id) {
	    int rows = StudentService.deleteStudent(id);
	    if(rows > 0){			
	        return "OK";
	    }else{
	        return "FAIL";			
	    }
	}

}
