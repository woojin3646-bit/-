package A2101_벡터_개념연습;

import java.util.Vector;

public class A2101개념연습03 {
	public static void main(String[] args) {	
		
		/*
			[문제]
			아래 벡터에 10, 20, 30을 저장한후, 출력하시오.
			그리고 벡터에 20을 삭제한후, 출력하시오.
			그리고 길이도 출력하시오.
		
		*/
		
		
		Vector<Integer> vec = new Vector<Integer>();	
		
		
		vec.add(10);				
		System.out.println(vec);
		vec.add(20);				
		System.out.println(vec);
		vec.add(30);				
		System.out.println(vec);
	
		vec.remove(1);
		System.out.println(vec);
		System.out.println(vec.size());
		
		
	}
}