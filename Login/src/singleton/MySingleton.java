package singleton;

public class MySingleton {
	private static MySingleton refMySingleton;
	private static void createInstance() {
		if(refMySingleton == null) {
			refMySingleton = new MySingleton();
		}
	}
	private MySingleton() {
//		createInstance();
	}
	public static MySingleton getInstance() {
		createInstance();
		return refMySingleton;
	}
}
