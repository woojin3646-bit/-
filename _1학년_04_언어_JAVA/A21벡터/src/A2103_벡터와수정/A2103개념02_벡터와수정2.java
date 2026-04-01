package A2103_벡터와수정;

import java.util.Vector;
/*
	[리스트와 수정 연습]
	numberList의 값들을 벡터에 저장한후 
	벡터의 모든값을 1씩 증가시키시오. 
*/
/*
	[출력예시]
	[10, 43, 24, 12, 52]
	[11, 44, 25, 13, 53]
*/
public class A2103개념02_벡터와수정2 {
	public static void main(String[] args) {
		int[] numberList = {10, 43, 24, 12, 52};
		Vector<Integer> vec = new Vector<Integer>();
		
		
		for(int i = 0; i < numberList.length; i++) {
			vec.add(numberList[i]);
		}
		 System.out.println(vec);
		
		for(int i = 0; i < vec.size(); i++) {
			int a = vec.get(i);
			a += 1;
			vec.set(i, a);
		}
	    System.out.println(vec);
	}
}
