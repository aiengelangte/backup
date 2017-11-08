package util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import bean.Commodity;

public class ReadSum {

	public static double read(String fileName)
			throws IOException {
		//String fileName="E://Storedata//Sum.txt";
		File file = new File(fileName);
		String tempString;
		double sum = 0;
		if (file.exists()) {
			BufferedReader reader = new BufferedReader(new FileReader(file));
			String[] aStr = new String[2];
			while ((tempString = reader.readLine()) != null) {
				sum=Double.parseDouble(tempString);
				//System.out.println(sum);
			}
		} else {
			//System.out.println("bucunzai");
		}
		return sum;
	}

}
