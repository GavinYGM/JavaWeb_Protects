package beans;

public class Circle {
	private double radius; //Բ�İ뾶
	public void setRadius(double radius) {
		this.radius = radius;
	}
	public double getRadius() {
		return radius;
	}
	public Circle() {
		// TODO Auto-generated constructor stub
	}
	public double circleArea() {
		return Math.PI*radius*radius;
	}
	public double circleLength() {
		return Math.PI*2*radius;
	}
}
