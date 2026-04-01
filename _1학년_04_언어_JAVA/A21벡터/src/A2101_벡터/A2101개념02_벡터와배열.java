package A2101_벡터;

import java.util.Vector;

public class A2101개념02_벡터와배열 {
	public static void main(String[] args) {	
		
		/*
		[개념] Vector (컬렉션)

		1. Vector란?
		   - 여러 개의 데이터를 저장할 수 있는 자료구조이다.
		   - 배열과 비슷하지만 크기가 자동으로 증가한다.
		   - 배열은 크기를 미리 정해야 하지만
		     Vector는 데이터를 추가하면 자동으로 공간이 늘어난다.

		2. 배열과 Vector 차이

		   [배열비교]
		   
		   int[] arr = new int[3];

		   arr[0] = 10;
		   arr[1] = 20;
		   arr[2] = 30;

		   [벡터비교]
		   
		   Vector<Integer> vec = new Vector<Integer>();

		   vec.add(10);
		   vec.add(20);
		   vec.add(30);

		3. Vector 주요 함수

		   add()     : 데이터 추가
		   remove()  : 데이터 삭제
		   clear()   : 전체 데이터 삭제
		   size()    : 저장된 데이터 개수
		   get()     : 특정 위치 데이터 조회
		   set()     : 특정 위치 데이터 수정

		4. 배열과 비교

		   배열            Vector
		   arr.length      vec.size()
		   arr[0]          vec.get(0)
		   arr[0] = 10     vec.set(0, 10)
		
		5. 즉, Vector 는 아래 처럼 무한대 배열과 똑같다.
			int[] arr  = new int[무한대];
		
		*/
				
		/*
		 	[주의]
		  	벡터는 선언할때 자료형을 지정해야하는데 
		  	일반 자료형은 int , float , double , char 등은 
		  	사용할수없다. 	  	
		  	자료형은 전부 클래스만 사용가능하다. 
		 	그래서 int 대신 Integer 를 사용한다. 	
		 */
		Vector<Integer> vec = new Vector<Integer>();	
		
		/*
		  	[벡터의 기능]
		  		add		=> 추가	
		 */
		
		vec.add(10);				// arr[0] = 10;
		System.out.println(vec);
		
		vec.add(20);				// arr[1] = 20;
		System.out.println(vec);
		
		vec.add(30);				// arr[2] = 30;
		System.out.println(vec);
		
	
		
	}
}