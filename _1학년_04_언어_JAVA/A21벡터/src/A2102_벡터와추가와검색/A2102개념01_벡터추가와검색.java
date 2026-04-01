package A2102_벡터와추가와검색;

import java.util.Vector;

/*
	[벡터추가와 검색]
	numberList의 모든값을 벡터에 추가한후,
	25보다 큰값을 출력하시오.
*/
/*
	[출력예시]
	30
	40
	50

*/
public class A2102개념01_벡터추가와검색 {
	public static void main(String[] args) {
		int [] numberList = {10, 20, 30, 40, 50};
		Vector<Integer> vec = new Vector<Integer>();
		
		
		for(int i = 0; i < numberList.length; i++) {
			vec.add(numberList[i]);
		}
		
		for(int i = 0; i < vec.size(); i++) {
			if(vec.get(i) > 25) {
				System.out.println(vec.get(i));
			}
		}
	}
}
