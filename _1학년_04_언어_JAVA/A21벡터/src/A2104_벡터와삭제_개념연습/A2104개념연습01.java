package A2104_벡터와삭제_개념연습;

import java.util.Vector;

public class A2104개념연습01 {
	public static void main(String[] args) {
		
		/*
		  	[문제]
		  	numberList 의 값을 Vector에 저장한후 인덱스가 2인값을 삭제한후출력.
		 
		 */
		
		int[] numberList = {10, 20, 30, 40};	
		Vector<Integer> vec = new Vector<Integer>();
		
		for(int i = 0; i < numberList.length; i++) {
			vec.add(numberList[i]);
		}
		vec.remove(2);
		
		System.out.println(vec);
		
		
	}
}