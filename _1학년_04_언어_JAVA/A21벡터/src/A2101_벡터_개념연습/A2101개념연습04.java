package A2101_벡터_개념연습;

import java.util.Vector;

public class A2101개념연습04 {
	public static void main(String[] args) {	
		/*
		[문제]

		Vector에 다음 작업을 순서대로 수행하시오.

		(1) 10, 20, 30을 저장하시오.
		(2) 저장된 값 중 20을 출력하시오.
		(3) 값 30을 100으로 변경한 후 전체 Vector를 출력하시오.
		(4) Vector의 모든 데이터를 삭제한 후 결과를 출력하시오.
	*/
		
		Vector<Integer> vec = new Vector<Integer>();	
		
		vec.add(10);				
		System.out.println(vec);
		
		vec.add(20);				
		System.out.println(vec);
		
		vec.add(30);				
		System.out.println(vec); // [10, 20, 30]
		
	
		int a = vec.get(1);			
		System.out.println("get(1) => " + a);
		
		vec.set(0, 100);			
		System.out.println("set(0. 100) => "+ vec);
		
		vec.clear();
		System.out.println("clear() => " + vec);
		
		
		
	}
}