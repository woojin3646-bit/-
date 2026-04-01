package A2104_벡터와삭제;

import java.util.Vector;

public class A2104개념02_벡터의삭제문제점 {
	public static void main(String[] args) {
		
		/*
		[개념] Vector 삭제 시 발생하는 문제

			1. Vector는 배열처럼 인덱스를 사용하여 데이터를 관리한다.
			   따라서 데이터를 삭제하면 뒤에 있는 값들이 앞으로 이동한다.
			   
			2. i++을 자동으로 해놓으면 건너띄는 데이터가 발생한다.
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
		
		for(int i=0; i<vector.size(); i++) {
			
			if(vector.get(i) == 3) {
				vector.remove(i);
				
			}
			
		}
		
		System.out.println(vector);
		
		
	}
}