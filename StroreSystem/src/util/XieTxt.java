package util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class XieTxt {

	/*public static void main(String[] args) {
		Save(452.26);
	}*/

	public static void Save(double sum,String fileName) {
		String str = new String(); // ԭ��txt����
		String s1 = new String();// ���ݸ���
		try {
			File f = new File(fileName);
			if (f.exists()) {
				//System.out.print("�ļ�����");
			} else {
				//System.out.print("�ļ�������");
				f.createNewFile();// �������򴴽�
			}
			BufferedReader input = new BufferedReader(new FileReader(f));

			while ((str = input.readLine()) != null) {
				s1 += str + "\n";
			}
			//System.out.println(s1);
			input.close();
			s1= String.valueOf(sum);

			BufferedWriter output = new BufferedWriter(new FileWriter(f));
			output.write(s1);
			output.close();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}
