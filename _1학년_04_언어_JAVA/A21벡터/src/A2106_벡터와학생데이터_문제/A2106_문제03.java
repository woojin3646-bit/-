package A2106_벡터와학생데이터_문제;

import java.util.Arrays;
import java.util.Random;
import java.util.Vector;

/*
[문제] 
국어와 수학 성적의 총합이 120점 미만인 학생 정보를 삭제하시오.
*/ 
/*
[정답]

[1003, 1005]
[김민정, 오만석]
[여, 남]
[64, 49]
[65, 80]
*/ 

public class A2106_문제03 {
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
	 
	}
}
