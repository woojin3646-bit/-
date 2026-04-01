package A2101_벡터;

import java.util.Vector;

public class A2101개념03_벡터의여러가지기능1 {
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
		System.out.println(vec);
		
		vec.remove(0);				
		System.out.println(vec);
		
		
		int size = vec.size();		// arr.length
		System.out.println(size);
		
		
		
	}
}