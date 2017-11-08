package util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import bean.Commodity;

public class ReadTxt {
	
	public static void main(String[] args) throws IOException {
		List<Commodity> aList = new ArrayList<>();
		read( aList);
	}

	public static List<Commodity> read(List<Commodity> aListTD)
			throws IOException {
		String fileName="E://Storedata//Commodity.txt";
		File file = new File(fileName);
		String tempString;
		if (file.exists()) {
			BufferedReader reader = new BufferedReader(new FileReader(file));
			String[] aStr = new String[2];
			while ((tempString = reader.readLine()) != null) {
				aStr = tempString.split(" ");
				aListTD.add(new Commodity(aStr[0], Double.parseDouble(aStr[1])));
			}
		} else {
			//System.out.println("bucunzai");
		}
		return aListTD;
	}

}
