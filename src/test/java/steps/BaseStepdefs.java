package steps;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;
import web.pages.AdminBaseDashboardPage;
import web.pages.AdminLoginPage;
import web.pages.LoginPage;
import web.pages.SecurePage;

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
}
