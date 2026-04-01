package A2105_벡터와데이터;

import java.util.Vector;

/*
	[문제]
	
	item 배열은 상품의 번호를 저장한 배열이다.
	price 배열은 상품의 가격을 저장한 배열이다.
	count 배열은 각 상품의 재고 개수를 저장한 배열이다.
	
	세 배열은 같은 인덱스를 기준으로 하나의 상품 정보를 의미한다.
	
	item[i]  → 상품번호
	price[i] → 상품가격
	count[i] → 재고개수
	
	각 배열의 데이터를 각각의 Vector들에 저장한 뒤,
	상품의 총 금액(가격 × 재고)을 계산하여 dVec에 저장하시오.
	
	즉,
	상품별 총 금액 = price[i] * count[i]
	
	를 계산하여 dVec에 저장한 후
	모든 Vector들의 내용을 출력하시오.
*/
/*
	[출력예시]
	[1001, 1002, 1003, 1004]
	[500, 1200, 4300, 2300]
	[3, 1, 2, 1]
	[1500, 1200, 8600, 2300]

*/
public class A2105개념03_상품 {
	public static void main(String[] args) {
		int[] item 	= {1001, 1002, 1003, 1004};
	    int[] price = { 500, 1200, 4300, 2300};
	    int[] count = {   3,    1,    2,    1};
	    
	    Vector<Integer> aVec = new Vector<Integer>();
	    Vector<Integer> bVec = new Vector<Integer>();
	    Vector<Integer> cVec = new Vector<Integer>();
	    Vector<Integer> dVec = new Vector<Integer>();
	    
	    for(int i = 0; i < item.length; i++){
	    	aVec.add(item[i]);
	    	bVec.add(price[i]);
	    	cVec.add(count[i]);
	        int a = price[i] * count[i];
	        dVec.add(a);
	    }

	    System.out.println(aVec);
	    System.out.println(bVec);
	    System.out.println(cVec);
	    System.out.println(dVec);
	}
}
