package tw.brad.utils;

public class Brad15 {
	private int x, y;
	public Brad15(String x, String y) {
		try {
			this.x = Integer.parseInt(x);
			this.y = Integer.parseInt(y);
		}catch (Exception e) {
		}
	}
	public double operator() {
		double r = 0;
		r = x + y;
		return r;
	}
}
