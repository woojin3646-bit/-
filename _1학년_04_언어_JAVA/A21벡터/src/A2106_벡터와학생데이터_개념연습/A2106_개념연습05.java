package A2106_벡터와학생데이터_개념연습;

import java.util.Arrays;
import java.util.Random;
import java.util.Vector;

/*
[문제] 
1등의 번호, 이름을 출력하시오.
만약 여러 명이면 전부 출력하시오.
*/ 
/*
[정답]
129
1003 김민정 64 65
1005 오만석 49 80
*/ 
public class A2106_개념연습05 {
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
	    
	    
	    
	    int max = korScoreVec.get(0) + mathScoreVec.get(0);

	    for(int i = 1; i < numberVec.size(); i++){
	        int total = korScoreVec.get(i) + mathScoreVec.get(i);
	        if(max < total){
	            max = total;
	        }
	    }
	    System.out.println(max);

	    for(int i = 0; i < numberVec.size(); i++){
	    	  int total = korScoreVec.get(i) + mathScoreVec.get(i);
	        if(max == total){
	        	
	        	 System.out.print(numberVec.get(i) + " ");
	    		    System.out.print(nameVec.get(i) + " ");
	    		    System.out.print(genderVec.get(i) + " ");
	    		    System.out.print(korScoreVec.get(i) + " ");
	    		    System.out.println(mathScoreVec.get(i));
	        }
	    }

	}
}
