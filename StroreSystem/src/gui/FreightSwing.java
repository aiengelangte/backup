package gui;

import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

import javax.swing.*;

import util.ReadSum;
import util.ReadTxt;
import util.XieTxt;
import bean.Commodity;

public class FreightSwing extends JFrame {

	static double count = 0;
	static double SumCount = 0;
	static double temp=0;
	String takeType;
	List<Commodity> aList = new ArrayList<Commodity>();
	//List<Double> aResult = new ArrayList<Double>();

	double price = 0;
	JLabel noteInformation, originStation, quantity;
	JLabel deliveryMethod, CommodityName;
	JLabel countLabel, PriceLabel;
	JTextField textQuantity, PriceText;
	JRadioButton send, take;
	JComboBox province, city, CommodityNameT;
	JButton submit, xunhuanButton;
	JTextArea result;

	private static final long serialVersionUID = 1L;
	GridBagLayout outBagLayout = new GridBagLayout();
	GridBagConstraints containerLayout = new GridBagConstraints();

	public FreightSwing(String str) {
		super(str);
		setSize(800, 500);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setLayout(outBagLayout);
		// ���÷���
		addComponent();
		xunhuanButton.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method
				Sum();
			}
		});

		submit.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				cacute();

			}
		});
		setVisible(true);
		setLocationRelativeTo(null);// �������ʾ;
	}

	// ����������н���������е����;ʹ�õ������鲼��
	// ����������н���������е����;ʹ�õ������鲼��
	public void addComponent() {
		// �����Ϣ����
		noteInformation = new JLabel("�����������Ϣ");
		// ָ������߿���Χ���ⲿ��䡣Ĭ��Ϊ����䡣
		containerLayout.insets = new Insets(2, 1, 1, 1);
		add(outBagLayout, containerLayout, noteInformation, 0, 0, 1, 1);
		// ʼ��վ
		originStation = new JLabel("�ܽ�");
		add(outBagLayout, containerLayout, originStation, 0, 1, 1, 1);
		// ʼ��վ����
		countLabel = new JLabel("");
		add(outBagLayout, containerLayout, countLabel, 1, 1, 1, 1);
		// ��Ʒ����
		CommodityName = new JLabel("��Ʒ���֣�");
		add(outBagLayout, containerLayout, CommodityName, 0, 2, 1, 1);
		PriceLabel = new JLabel("�۸�");
		add(outBagLayout, containerLayout, PriceLabel, 2, 2, 1, 1);
		PriceText = new JTextField(10);
		add(outBagLayout, containerLayout, PriceText, 3, 2, 1, 1);
		// ��ѡ�������� ���к�ʡ��
		CommodityNameT = new JAutoCompleteComboBox(new DefaultComboBoxModel(
				getCommodityName()));
		add(outBagLayout, containerLayout, CommodityNameT, 1, 2, 1, 1);

		// ��Ʒ��������֧����
		quantity = new JLabel("��Ʒ����(��)��");
		add(outBagLayout, containerLayout, quantity, 0, 3, 1, 1);
		// ���������

		textQuantity = new JTextField(15);
		add(outBagLayout, containerLayout, textQuantity, 1, 3, 1, 1);
		// ���ͷ�ʽ
		/*deliveryMethod = new JLabel("���ͷ�ʽ��");
		add(outBagLayout, containerLayout, deliveryMethod, 0, 4, 1, 1);*/
		// ���� ��ѡ��
		//send = new JRadioButton("����");
		/*add(outBagLayout, containerLayout, send, 1, 4, 1, 1);
		// ���� ��ѡ��
		take = new JRadioButton("����");
		add(outBagLayout, containerLayout, take, 2, 4, 1, 1);
		ButtonGroup group = new ButtonGroup();
		group.add(send);
		group.add(take);*/
		// submit��ť
		submit = new JButton("�ύ");
		xunhuanButton = new JButton("����");
		containerLayout.insets = new Insets(7, 0, 4, 0);
		add(outBagLayout, containerLayout, submit, 1, 5, 1, 1);
		add(outBagLayout, containerLayout, xunhuanButton, 2, 5, 1, 1);
		result = new JTextArea(15, 30);
		add(outBagLayout, containerLayout, result, 0, 6, 3, 4);

	}

	/**
	 * @param mes
	 *            ��ʾ��
	 */
	private void toolTip(String mes) {
		Toolkit.getDefaultToolkit().beep();
		JOptionPane.showMessageDialog(null, mes, "��ܰ��ʾ",
				JOptionPane.INFORMATION_MESSAGE);
		return;
	}

	private Object[] getCommodityName() {

		try {
			aList = ReadTxt.read(aList);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<String> aListName = new ArrayList<String>();
		for (Commodity aCommodity : aList) {
			aListName.add(aCommodity.getName());
		}
		Object[] commodityList = aListName.toArray();
		Object[] PRO2 = { "����" };
		Object[] PRO = arrayProcess(commodityList, PRO2);
		return PRO;
	}

	
	/**
	 * @param PRO
	 * @param PRO2
	 * @return ���鴦��, ���պ��ֽ������򲢺ϲ�����
	 */
	private Object[] arrayProcess(Object[] PRO, Object[] PRO2) {
		Comparator<Object> com = Collator.getInstance(java.util.Locale.CHINA);
		Arrays.sort(PRO, com);
		int strl1 = PRO2.length;
		int strl2 = PRO.length;
		PRO2 = Arrays.copyOf(PRO2, strl1 + strl2);
		System.arraycopy(PRO, 0, PRO2, strl1, strl2);
		return PRO2;
	}

	public void add(GridBagLayout g, GridBagConstraints c, JComponent jc,
			int x, int y, int gw, int gh) {
		// ָ����Ԫ����ʼ�к��У�xΪ�У�yΪ�У�Ĭ��ֵΪ0
		c.gridx = x;
		c.gridy = y;
		// ��ʾ����ڵ�Ԫ���ڵĶ��뷽ʽ
		c.anchor = GridBagConstraints.WEST;
		// ָ����Ԫ���к��еķ�Χ��Ĭ��ֵΪ1��wΪ�У�hΪ��
		c.gridwidth = gw;
		c.gridheight = gh;
		g.setConstraints(jc, c);
		add(jc);
	}

	public void cacute() {

		String osn = CommodityName.getText();
		String pro = (String) CommodityNameT.getSelectedItem();
		if (StringUtil.isEmpty(pro) || "��ѡ����Ʒ����".equals(pro)) {
			toolTip("��ѡ����Ʒ���֣�");
			CommodityNameT.grabFocus();
			return;
		} else {
			for (Commodity aCommodity : aList) {
				if (aCommodity.getName().equals(pro))
					price = aCommodity.getPrice();
			}
			PriceText.setText(String.valueOf(price));

		}

		String quan = textQuantity.getText();
		if (StringUtil.isEmpty(quan) || !StringUtil.isNumeric(quan)) {
			toolTip("����д��ȷ����Ʒ������");
			textQuantity.grabFocus();
			return;
		} else {
			count = price * (Integer.parseInt(quan));
			BigDecimal bd=new BigDecimal(count); 
			 bd=bd.setScale(4, BigDecimal.ROUND_HALF_UP); 
			 count=bd.doubleValue();
		}

		/*String sen = send.getText();
		String tak = take.getText();
		if (!take.isSelected() && !send.isSelected()) {
			toolTip("��ѡ�����ͷ�ʽ��");
			return;
		}*/

		
		try {
			SumCount = ReadSum.read("E://Storedata//Sum.txt");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			SumCount = ReadSum.read("E://Storedata//Sum.txt");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		temp=count;
		XieTxt.Save(temp, "E://Storedata//Temp.txt");
		//������λС������������
		SumCount=count+SumCount;
		BigDecimal bd=new BigDecimal(SumCount); 
	    bd=bd.setScale(4, BigDecimal.ROUND_HALF_UP); 
	    SumCount=bd.doubleValue();
		XieTxt.Save(SumCount,"E://Storedata//Sum.txt");
		
		
		countLabel.setText("" + SumCount);
		// ���ͷ�ʽ
		//takeType = (String) (send.isSelected() ? sen : tak);
		String num = "�ܽ�" + SumCount + "\n���֣�" + pro + "\n������" + quan + 
				  "\n���ν��׽��(Ԫ)��" + count;
		result.setText(num);
	}

	protected void Sum() {
		// TODO Auto-generated method stub
		try {
			temp = ReadSum.read("E://Storedata//Temp.txt");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			SumCount = ReadSum.read("E://Storedata//Sum.txt");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SumCount=SumCount-temp;
		BigDecimal bd=new BigDecimal(SumCount); 
	    bd=bd.setScale(4, BigDecimal.ROUND_HALF_UP); 
	    SumCount=bd.doubleValue();
		String num = "�ܽ�" +SumCount + 
				"������һ�ʽ��ף�" + temp;
		result.setText(String.valueOf(SumCount));
		countLabel.setText("" + SumCount);
		XieTxt.Save(SumCount,"E://Storedata//Sum.txt");
	}
}
