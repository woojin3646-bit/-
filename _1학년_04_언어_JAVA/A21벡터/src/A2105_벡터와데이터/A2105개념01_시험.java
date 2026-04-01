package A2105_벡터와데이터;

import java.util.Vector;

/*
	[문제]
	aList와 bList는 구구단의 앞의 숫자와 뒤의 숫자를 의미한다.
	
	(1) aList의 값을 aVec에 저장한다.
	(2) bList의 값을 bVec에 저장한다.
	(3) 두 값을 곱한 결과를 cVec에 저장한다.
	
	그 후 aVec, bVec, cVec의 값을 이용하여
	아래 출력예시와 같이 구구단 형태로 출력하시오.
*/
/*
	[출력예시]
	4 * 6 = 24
	3 * 6 = 18
	8 * 3 = 24
	9 * 9 = 81
	2 * 3 = 6
	6 * 7 = 42
*/
public class A2105개념01_시험 {
	public static void main(String[] args) {
		int[] aList = {4, 3, 8, 9, 2, 6};
	    int[] bList = {6, 6, 3, 9, 3, 7};
	    
	    Vector<Integer> aVec = new Vector<Integer>();
	    Vector<Integer> bVec = new Vector<Integer>();
	    Vector<Integer> cVec = new Vector<Integer>();
	    
	    for(int i = 0; i < aList.length; i++){
	    	aVec.add(aList[i]);
	    	bVec.add(bList[i]);
	        int a = aList[i] * bList[i];
	        cVec.add(a);
	    }
	    
	    for(int i = 0; i < aVec.size(); i++){
	        
	        System.out.println(aVec.get(i) + " * " + bVec.get(i) + " = " + cVec.get(i));
	    }
	    
	}
}
