package com.tm.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;



import com.tm.pojo.TD;

public class ReadTxt {

	
	public static void main(String[] args) throws IOException {
		List<TD> aList =new ArrayList<>();
		read("E://TMdata//杭州.txt", aList);
	}
	
	
	public static List<TD> read( String fileName,List<TD> aListTD) throws IOException{
		File file = new File(fileName);
		String tempString;
		if(file.exists()){
        BufferedReader	reader = new BufferedReader(new FileReader(file));
        String[] aStr=new String[2];
        while ((tempString = reader.readLine()) != null) {
        	aStr=tempString.split(" ");	
        	aListTD.add(new TD(aStr[0],Integer.parseInt(aStr[1])));
        }
        
		}else {
			System.out.println("bucunzai");
		}
		return aListTD;
		
	}
	
}
