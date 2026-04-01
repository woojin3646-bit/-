package A2106_벡터와학생데이터_개념연습;

import java.util.Vector;

/*
	[문제] 
	국어와 수학 점수가 모두 60점 이상인 학생 정보를 출력하시오
*/ 
/*
	[정답]
	1003 김민정 여 64 65
*/ 
public class A2106_개념연습02 {
	public static void main(String[] args) {
		int [] numberList = {    1001,     1002,     1003,     1004,    1005,      1006};
	    String [] nameList = {  "이민수", "이영희",  "김민정", "이철민", "오만석", "최이슬"};
	    String [] genderList = {		"남",    "여",      "여",     "남",    "남",     "여"};
	    int [] korScoreList = {      10,      70,       64,         13,      49,       14};
	    int [] mathScoreList = {      20,      30,       65,         87,      80,       90};
	    

	    
	    Vector<Integer> numberVec = new Vector<Integer>();
	    Vector<String> nameVec = new Vector<String>();
	    Vector<String> genderVec = new Vector<String>();
	    Vector<Integer> korScoreVec = new Vector<Integer>();
	    Vector<Integer> mathScoreVec = new Vector<Integer>();
	    
	    for(int i = 0; i < numberList.length; i++) {
	    	numberVec.add(numberList[i]);
	    	nameVec.add(nameList[i]);
	    	genderVec.add(genderList[i]);
	    	korScoreVec.add(korScoreList[i]);
	    	mathScoreVec.add(mathScoreList[i]);
	    }  
	    
	    
	    System.out.println(numberVec);
	    System.out.println(nameVec);
	    System.out.println(genderVec);
	    System.out.println(korScoreVec);
	    System.out.println(mathScoreVec);
	    
	    for(int i = 0; i < numberVec.size(); i++){
	    	int a = korScoreVec.get(i);
	    	int b = mathScoreVec.get(i);
	    	if(a >= 60 && b >= 60) {
	    		System.out.print(numberVec.get(i) + " ");
	    		System.out.print(nameVec.get(i) + " ");
	    		System.out.print(genderVec.get(i) + " ");
	    		System.out.print(korScoreVec.get(i) + " ");
	    		System.out.print(mathScoreVec.get(i) + " ");
	    		System.out.println();
	    	}
	        
	    }
	}
}
