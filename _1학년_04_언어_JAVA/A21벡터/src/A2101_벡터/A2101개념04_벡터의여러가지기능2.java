package A2101_벡터;

import java.util.Vector;

public class A2101개념04_벡터의여러가지기능2 {
	public static void main(String[] args) {	
		
		/*
		
		 Vector 주요 함수

		   add()     : 데이터 추가
		   remove()  : 데이터 삭제
		   clear()   : 전체 데이터 삭제
		   size()    : 저장된 데이터 개수
		   get()     : 특정 위치 데이터 조회
		   set()     : 특정 위치 데이터 수정
		*/
		
		
		Vector<Integer> vec = new Vector<Integer>();	
		
		vec.add(10);				
		System.out.println(vec);
		
		vec.add(20);				
		System.out.println(vec);
		
		vec.add(30);				
		System.out.println(vec); // [10, 20, 30]
		
	
		// arr[1]
		int a = vec.get(1);			
		System.out.println("get(1) => " + a);
		
		// arr[0] = 100;
		vec.set(0, 100);			
		System.out.println("set(0. 100) => "+ vec);
		
		// arr = null;
		vec.clear();
		System.out.println("clear() => " + vec);
		
		
		
	}
}