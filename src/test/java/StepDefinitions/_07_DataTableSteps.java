package StepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import io.cucumber.messages.types.DataTable;

import java.util.List;

public class _07_DataTableSteps {
    @When("write user name {string}")
    public void writeUserName(String username) {
        System.out.println(username);
    }

    @And("write user name and password {string} and{string}")
    public void writeUserNameAndPasswordAnd(String username, String password) {
        System.out.println(username + " " + password);
    }

    @And("write username as DataTable")
    public void writeUsernameAsDataTable(io.cucumber.datatable.DataTable userlar) {
        List<String> listUserlar=userlar.asList(String.class);

        for(String user : listUserlar)
            System.out.println("user : "+ user);
    }

    @And("write username and password as DataTable")
    public void writeUsernameAndPasswordAsDataTable(io.cucumber.datatable.DataTable userpass) {
        List<List<String>> listuserpass = userpass.asLists(String.class);
        for (int i = 0; i < listuserpass.size(); i++) {
            System.out.println(listuserpass.get(i).get(0)+" "+ listuserpass.get(i).get(1));

        }
    }
}
