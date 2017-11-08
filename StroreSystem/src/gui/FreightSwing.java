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
		// 调用方法
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
		setLocationRelativeTo(null);// 设居中显示;
	}

	// 在这个方法中将会添加所有的组件;使用的网格组布局
	// 在这个方法中将会添加所有的组件;使用的网格组布局
	public void addComponent() {
		// 相关信息输入
		noteInformation = new JLabel("请输入相关信息");
		// 指定组件边框周围的外部填充。默认为不填充。
		containerLayout.insets = new Insets(2, 1, 1, 1);
		add(outBagLayout, containerLayout, noteInformation, 0, 0, 1, 1);
		// 始发站
		originStation = new JLabel("总金额：");
		add(outBagLayout, containerLayout, originStation, 0, 1, 1, 1);
		// 始发站名称
		countLabel = new JLabel("");
		add(outBagLayout, containerLayout, countLabel, 1, 1, 1, 1);
		// 商品名字
		CommodityName = new JLabel("商品名字：");
		add(outBagLayout, containerLayout, CommodityName, 0, 2, 1, 1);
		PriceLabel = new JLabel("价格");
		add(outBagLayout, containerLayout, PriceLabel, 2, 2, 1, 1);
		PriceText = new JTextField(10);
		add(outBagLayout, containerLayout, PriceText, 3, 2, 1, 1);
		// 复选框及其内容 城市和省份
		CommodityNameT = new JAutoCompleteComboBox(new DefaultComboBoxModel(
				getCommodityName()));
		add(outBagLayout, containerLayout, CommodityNameT, 1, 2, 1, 1);

		// 商品数量（万支）：
		quantity = new JLabel("商品数量(个)：");
		add(outBagLayout, containerLayout, quantity, 0, 3, 1, 1);
		// 数量输入框

		textQuantity = new JTextField(15);
		add(outBagLayout, containerLayout, textQuantity, 1, 3, 1, 1);
		// 配送方式
		/*deliveryMethod = new JLabel("配送方式：");
		add(outBagLayout, containerLayout, deliveryMethod, 0, 4, 1, 1);*/
		// 派送 单选框
		//send = new JRadioButton("派送");
		/*add(outBagLayout, containerLayout, send, 1, 4, 1, 1);
		// 自提 单选框
		take = new JRadioButton("自提");
		add(outBagLayout, containerLayout, take, 2, 4, 1, 1);
		ButtonGroup group = new ButtonGroup();
		group.add(send);
		group.add(take);*/
		// submit按钮
		submit = new JButton("提交");
		xunhuanButton = new JButton("撤销");
		containerLayout.insets = new Insets(7, 0, 4, 0);
		add(outBagLayout, containerLayout, submit, 1, 5, 1, 1);
		add(outBagLayout, containerLayout, xunhuanButton, 2, 5, 1, 1);
		result = new JTextArea(15, 30);
		add(outBagLayout, containerLayout, result, 0, 6, 3, 4);

	}

	/**
	 * @param mes
	 *            提示框
	 */
	private void toolTip(String mes) {
		Toolkit.getDefaultToolkit().beep();
		JOptionPane.showMessageDialog(null, mes, "温馨提示",
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
		Object[] PRO2 = { "名字" };
		Object[] PRO = arrayProcess(commodityList, PRO2);
		return PRO;
	}

	
	/**
	 * @param PRO
	 * @param PRO2
	 * @return 数组处理, 按照汉字进行排序并合并数组
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
		// 指定单元格起始行和列，x为列，y为行，默认值为0
		c.gridx = x;
		c.gridy = y;
		// 表示组件在单元格内的对齐方式
		c.anchor = GridBagConstraints.WEST;
		// 指定单元格行和列的范围。默认值为1，w为列，h为行
		c.gridwidth = gw;
		c.gridheight = gh;
		g.setConstraints(jc, c);
		add(jc);
	}

	public void cacute() {

		String osn = CommodityName.getText();
		String pro = (String) CommodityNameT.getSelectedItem();
		if (StringUtil.isEmpty(pro) || "请选择商品名字".equals(pro)) {
			toolTip("请选择商品名字！");
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
			toolTip("请填写正确的商品数量！");
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
			toolTip("请选择配送方式！");
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
		//保留四位小数，四舍五入
		SumCount=count+SumCount;
		BigDecimal bd=new BigDecimal(SumCount); 
	    bd=bd.setScale(4, BigDecimal.ROUND_HALF_UP); 
	    SumCount=bd.doubleValue();
		XieTxt.Save(SumCount,"E://Storedata//Sum.txt");
		
		
		countLabel.setText("" + SumCount);
		// 配送方式
		//takeType = (String) (send.isSelected() ? sen : tak);
		String num = "总金额：" + SumCount + "\n名字：" + pro + "\n数量：" + quan + 
				  "\n本次交易金额(元)：" + count;
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
		String num = "总金额：" +SumCount + 
				"撤销上一笔交易：" + temp;
		result.setText(String.valueOf(SumCount));
		countLabel.setText("" + SumCount);
		XieTxt.Save(SumCount,"E://Storedata//Sum.txt");
	}
}
