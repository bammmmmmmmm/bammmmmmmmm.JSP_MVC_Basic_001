package test.java.com;

import java.util.ArrayList;

import com.hewlett_packard.model_dtos.User;
import com.hewlett_packard.model_dtos.UserArrayListObject;

import junit.framework.TestCase;

public class TestForArrayListModelOfUserObjects extends TestCase{

	//Get the UserList Object from it's singleton class
	UserArrayListObject userListHolderClass = UserArrayListObject.getOnlyInstance();
	ArrayList<User> usersList=userListHolderClass.getUserList();
	String [] usersThereShouldBe =userListHolderClass.names;
	
	public void testListHasAllEntries_ContainsUsers()
	{
		for (int i=0; i<usersList.size();i++){
			//Note: I do not test the Singleton Pattern as I know it works... I imagine this could be done by throwing an error I would catch to assert False
			assertTrue((usersList.get(i) instanceof User)&&(usersList.get(i).getUserName().equals(usersThereShouldBe[i])));
		}
	}

}
