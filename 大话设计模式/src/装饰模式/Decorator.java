package в╟йндёй╫;

public abstract class Decorator implements Component {
	Component aComponent;

	public void setaComponent(Component aComponent) {
		this.aComponent = aComponent;
	}

	@Override
	public void Operation() {
		// TODO Auto-generated method stub
		if (aComponent != null) {
			aComponent.Operation();
		}
	}

}
