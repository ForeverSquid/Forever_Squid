package com.Forever.dao;

public class sdf {
	public static void main(String[] args) {
		int d=1;
		float sum=0;
		while(sum<100){
			sum+=2.5;
			if(d%5==0){
				sum-=6;
			}
			d++;
		}
		System.out.println(d);
	}

}
