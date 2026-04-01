package A2103_벡터와수정_개념연습;

import java.util.Vector;

/*
	[리스트와 수정]
	numberList 을 벡터에 저장한후, 
	벡터 에서 인덱스가 3에 해당하는 값을 1000으로 변경해보겠습니다.
*/
/*
	[출력예시]
	[10, 20, 30, 1000]
*/
public class A2103개념연습01 {
	public static void main(String[] args) {
		int[] numberList = {10, 20, 30, 40};
		Vector<Integer> vec = new Vector<Integer>();
		
		
		for(int i = 0; i < numberList.length; i++) {
			vec.add(numberList[i]);
		}
		
		vec.set(3, 1000);
		
		
	    System.out.println(vec);
	}
}
