package kr.co.itwill.classroom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ClassroomCont {
	
	@Autowired
	ClassroomDAO dao;
	
	public ClassroomCont() {
		System.out.println("-----ClassroomCont()객체 생성됨");
	}
	
}//class end
