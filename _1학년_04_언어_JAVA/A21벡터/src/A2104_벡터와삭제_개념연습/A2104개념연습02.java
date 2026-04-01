package A2104_벡터와삭제_개념연습;

import java.util.Vector;

public class A2104개념연습02 {
	public static void main(String[] args) {
		

		/*
			[문제]
			vector 안에 있는 숫자 3을 모두 삭제하시오.
		*/
		
		
		int[] arr = {1, 1, 3, 2, 2, 3, 3, 4, 4, 5, 5, 4};	
		
		Vector<Integer> vector = new Vector<Integer>();
		for(int i=0; i<arr.length; i++) {
			vector.add(arr[i]);
		}
		
		System.out.println(vector);
		
		
		
		for(int i=0; i<vector.size(); ) {
			
			if(vector.get(i) == 3) {
				
				vector.remove(i);
				
			}else {
				
				i += 1;
			}
			
		}
		
		System.out.println(vector);
		
		
	}
}