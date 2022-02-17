package springweb.a02_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import springweb.a02_mvc.a02_service.A01_EmpService;
import springweb.vo.Emp;

@Controller
public class A05_EmpAjaxController {
	@Autowired
	private A01_EmpService service;
	//초기화면 호출 /empAjax.do
	@GetMapping("/empAjax.do")
	public String empAjaxFrm() {
		return "WEB-INF\\views\\a02_mvc\\a05_empAjaxList.jsp";
	}
	//ajax 데이터 처리
	@GetMapping("/empAjax01.do")
	public String empAjax(Emp sch, Model d) {
		d.addAttribute("empList", service.getEmpList(sch));
		return "pageJsonReport"; //json View 호출..
	}
	@GetMapping("/empAjaxDetail.do")
	public String empAjaxDetail(int empno, Model d) {
		d.addAttribute("emp", service.getEmp(empno));
		return "pageJsonReport"; //json View 호출..
	}
}
