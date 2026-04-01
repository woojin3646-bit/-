package A2105_벡터와데이터_문제;

import java.util.Arrays;
import java.util.Vector;

/*
	[문제]
	aList와 bList는 가위바위보 게임의 결과를 저장한 배열이다.
	각 배열의 같은 인덱스는 서로 한 번의 게임을 의미한다.

	aList[i] → A의 선택
	bList[i] → B의 선택
	
	aList 는 aVec에 저장하고
	bList 는 bVec에 저장한다. 
	그후 각 게임의 결과를 판단하여 cVec에 저장하시오.
	판단 기준
	- A가 이기면 "a" 저장
	- B가 이기면 "b" 저장
	- 비기면 "ab" 저장
*/

/*
	[출력예시]
	[가위, 바위, 가위, 보]
	[바위, 바위, 보, 바위]
	[b, ab, a, a]
*/
public class A2105문제02 {
	public static void main(String[] args) {
		String[] aList = {"가위", "바위", "가위", "보"};
	    String[] bList = {"바위", "바위", "보", "바위"};
	    
	    Vector<String> aVec = new Vector<String>();
	    Vector<String> bVec = new Vector<String>();
	    Vector<String> cVec = new Vector<String>();
	    
	  
	}
}
