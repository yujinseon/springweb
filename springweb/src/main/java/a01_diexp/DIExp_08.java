package a01_diexp;

import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.vo.GentleMan;
import a01_diexp.vo.GiftSender;

public class DIExp_08 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// DI(의존성 주입)을 위한 연습 환경 만들기..
		String path = "a01_diexp\\di08.xml";
		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext(path);
		// 컨테이너에 객체의 생성과 설정을 확인할 수 있다.
		GentleMan gm = ctx.getBean("gm", GentleMan.class);
		gm.showInfo();
		
		GiftSender gs = ctx.getBean("gs", GiftSender.class);
		gs.sendGift();
		ctx.close();
	}

}
