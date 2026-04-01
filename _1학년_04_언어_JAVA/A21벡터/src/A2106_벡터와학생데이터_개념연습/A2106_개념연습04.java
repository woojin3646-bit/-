package A2106_벡터와학생데이터_개념연습;

import java.util.Arrays;
import java.util.Random;
import java.util.Vector;

/*
	[문제] 
	여학생들 점수 총합과 남학생들의 점수 총합을 비교하고
	점수가 더 큰 쪽의 성별 출력하시오.
	단, 서로 같으면 "같다"를 출력하시오.
*/ 
/*
	[정답]
	259
	333
	여
*/ 

public class A2106_개념연습04 {
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
	    
	    
	    int totalAll1 = 0;
	    int totalAll2 = 0;

	    for(int i = 0; i < numberVec.size(); i++){
	        if(genderVec.get(i) == "남"){
	            int total = korScoreVec.get(i) + mathScoreVec.get(i);
	            totalAll1 += total;
	        }
	        if(genderVec.get(i) == "여"){
	            int total = korScoreVec.get(i) + mathScoreVec.get(i);
	            totalAll2 += total;
	        }
	    }
	    System.out.println(totalAll1);
	    System.out.println(totalAll2);
	    if(totalAll1 > totalAll2){
	    	System.out.println("남");
	    }else if(totalAll1 < totalAll2){
	    	System.out.println("여");
	    }else{
	    	System.out.println("같다");
	    }
	}
}
