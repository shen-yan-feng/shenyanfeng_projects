package test01;

public class Handler {
	
	public static void main(String[] args) {
		User user = new User();
		Address address = new Address();
		user.setName("peter");
		user.setSex("male");
		address.setCity("dalian");
		address.setStree("ming ze jie");
		System.out.println(user.getName());
		System.out.println(user.getSex());
		System.out.println(address.getStree());
		System.out.println(address.getCity());
	}

}
