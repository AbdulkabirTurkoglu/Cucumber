package StepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.lang3.RandomStringUtils;
import pages.DialogContent;
import pages.LeftNav;

public class _02_CoutrySteps {
    LeftNav ln = new LeftNav();
    DialogContent dc = new DialogContent();
    @And("Navigate to country")
    public void navigateToCountry() {
        ln.myClick(ln.setup);
        ln.myClick(ln.parameters);
        ln.myClick(ln.countries);

    }

    @When("Create a country")
    public void createACountry() {
        String ulkeAdi = RandomStringUtils.randomAlphanumeric(8);
        String ulkeKod = RandomStringUtils.randomNumeric(5);
        dc.myClick(dc.addButton);
        dc.mySendKeys(dc.nameInput, ulkeAdi);
        dc.mySendKeys(dc.codeInput, ulkeKod);
        dc.myClick(dc.saveButton);
    }

    @Then("Success message should be displayed")
    public void successMessageShouldBeDisplayed() {
        dc.verifyContainsText(dc.successMessage, "success");
    }

    @When("Create a country name as {string} code as {string}")
    public void createACountryNameAsCodeAs(String ulkeAdi, String ulkeKod) {
        dc.myClick(dc.addButton);
        dc.mySendKeys(dc.nameInput, ulkeAdi);
        dc.mySendKeys(dc.codeInput, ulkeKod);
        dc.myClick(dc.saveButton);
    }
}
