package project001;

public class Handler {
	
	public static void main(String[] args) {
		User user = new User();
		user.setName("peter");
		user.setSex("male");
		
		Address address = new Address();
		address.setCity("dalian");
		address.setStreet("ming ze jie");
		
		String userName = user.getName();
		String userSex = user.getSex();
		
		String  city = address.getCity();
		String street = address.getStreet();
		
		System.out.println("userName = " + userName);
		System.out.println("userSex = " + userSex);
		System.out.println("city = " + city);
		System.out.println("street = " + street);
		
	}

}
