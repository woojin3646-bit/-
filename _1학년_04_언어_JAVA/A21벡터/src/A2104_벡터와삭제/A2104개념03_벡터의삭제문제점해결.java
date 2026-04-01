package A2104_벡터와삭제;

import java.util.Vector;

public class A2104개념03_벡터의삭제문제점해결 {
	public static void main(String[] args) {
		
		/*
			[개념] Vector 삭제 문제 해결 방법
			1. 삭제할때는 i++을 하지않고
			2. 삭제가 없을때만 i++을 한다. 
		*/
		
		
		int[] arr = {1, 1, 3, 2, 2, 3, 3, 4, 4, 5, 5, 4};	
		
		// 배열 데이터를 Vector로 복사
		Vector<Integer> vector = new Vector<Integer>();
		for(int i=0; i<arr.length; i++) {
			vector.add(arr[i]);
		}
		
		System.out.println(vector);
		
		
		/*
			[문제]
			vector 안에 있는 숫자 3을 모두 삭제하시오.
		*/
		
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