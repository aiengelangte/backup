package в╟йндёй╫2;

public class Finery extends Person {

	protected Person aPerson;

	public void DeCorate(Person aPerson) {
		this.aPerson = aPerson;
	}

	@Override
	public void Show() {
		// TODO Auto-generated method stub
		if (aPerson != null) {
			aPerson.Show();
		}
	}

}
