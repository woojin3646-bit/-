package A2102_벡터와추가와검색_개념연습;

import java.util.Vector;

/*
	[벡터추가와검색 2]
	numberList의 모든값을 벡터에 추가한후,
	4의 배수를 출력하시오.
*/
/*
	[출력예시]
	20
	40
*/
public class A2102개념연습02 {
	public static void main(String[] args) {
		int [] numberList = {10, 20, 30, 40, 50};
		Vector<Integer> vec = new Vector<Integer>();
		
		
		for(int i = 0; i < numberList.length; i++) {
			vec.add(numberList[i]);
		}
		
		for(int i = 0; i < vec.size(); i++) {
			if(vec.get(i) % 4 == 0) {
				System.out.println(vec.get(i));
			}
		}
	}
}
