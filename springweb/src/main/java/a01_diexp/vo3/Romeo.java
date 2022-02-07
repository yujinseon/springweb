package a01_diexp.vo3;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

// a01_diexp.vo.Romeo
@Component("r01")
public class Romeo {
	private String name;
	@Autowired
	private Juliet juliet;
	public Romeo() {
		this.name="로미오";
		// TODO Auto-generated constructor stub
	}
	public Romeo(String name) {
		super();
		this.name = name;
	}
	public void callJuliet() {
		System.out.println(name+"이 창을 보고 말합니다.");
		if(juliet!=null) {
			System.out.println("창문을 열어다오!!");
			System.out.println("나의 "+juliet.getName());
		}else {
			System.out.println("줄리엣이 없습니다.");
		}
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Juliet getJuliet() {
		return juliet;
	}
	public void setJuliet(Juliet juliet) {
		this.juliet = juliet;
	}
	
}
