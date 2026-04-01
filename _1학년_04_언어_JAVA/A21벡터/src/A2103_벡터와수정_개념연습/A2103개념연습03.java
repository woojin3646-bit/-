package A2103_벡터와수정_개념연습;

import java.util.Arrays;
import java.util.Vector;
/*
	[문제]
	numberList의 각 값을 벡터에 저장한후, 
	벡터의 각각의 값들의 십의 자리와 일의 자리를 서로 교환한 후, 벡터 전체를 출력하시오.
*/
/*
	[출력예시]
	[851, 425, 771, 871, 725]
	[815, 452, 717, 817, 752]

*/
public class A2103개념연습03 {
	public static void main(String[] args) {
		int[] numberList = {851, 425, 771, 871, 725};
		
		Vector<Integer> vec = new Vector<Integer>();
		
		
		for(int i = 0; i < numberList.length; i++) {
			vec.add(numberList[i]);
		}
		 System.out.println(vec);
		
		for(int i = 0; i < vec.size(); i++) {
			int a = vec.get(i) / 100;
			int b = vec.get(i) % 100 / 10;
			int c = vec.get(i) % 10;
			int d = a * 100 + c * 10 + b;
			vec.set(i, d);
		}
	    System.out.println(vec);
	}
}
