package steps;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;
import web.pages.*;


import java.util.List;
import java.util.Map;

public class BaseStepdefs {

    @Given("Open login page")
    public void openWebPage() {
        AdminLoginPage.goToAdminLoginPage();
    }

    @When("User enters login credentials")
    public void clickButton(DataTable dt) {
        List<Map<String, String>> list = dt.asMaps(String.class, String.class);
        AdminLoginPage.loginInToSite(list);

    }

    @Then("Taken to secure page should see {string}")
    public void verifyOnSecuredPage(String expectedBannerText) {
        String actualBannerText = AdminBaseDashboardPage.getUserProfileDropdownText();
        Assert.assertEquals(expectedBannerText, actualBannerText);

    }

    @Then("Navigates to the product file import")
    public void navigateToProductFileImportPage() {
        AdminBaseDashboardPage.hoverOverLinkMakeSelection();
        AdminBaseDashboardPage.clickProductFileImportLink();
    }

    @Then("Navigates to the Edi Page")
    public void navigateToTheEdiPage() {
        AdminBaseDashboardPage.hoverOverEdiLinkMakeSelection();
        AdminBaseDashboardPage.clickEdiFindButton();
        System.out.println();
    }

    @Then("Enter Edi configuration to search for")
    public void enterEdiConfigurationToSearchFor() {
        AdminEdiPage.searchForConfigurations("1377");
        System.out.println();
    }
}
