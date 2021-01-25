package steps;

import edu.emory.mathcs.backport.java.util.Arrays;
import framework.GenerateOrders;
import framework.Utilities;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import web.pages.AdminBaseDashboardPage;
import web.pages.AdminEdiPage;

import java.util.*;

public class OrderStepdefs {

    private Scenario scenario;
    private Map<String, Object> testData;

    @Before
    public void beforeStep(Scenario scenario) {
        this.scenario = scenario;
        testData = new HashMap<>();
    }

    @Given("Single Order with multiple one or more products created with following parameters")
    public void singleOrderWithMultipleProductsCreatedWithFollowingParameters(DataTable dt) {
        List<List<String>> rows = dt.asLists();
        List<List<String>> updatedData = new ArrayList<List<String>>();
        String orderIdentifier = Utilities.generateRandomOrderReference();

        int counter = 1;
        for (List<String> row : rows) {
            String[] lineArray = row.toArray(new String[0]);
            if (counter > 1) {
                lineArray[0] = orderIdentifier;
            }
            updatedData.add(Arrays.asList(lineArray));
            counter += 1;
        }

        scenario.attach("Order Reference Number: " +  orderIdentifier, "text/plain", "Order Reference Numbers");
        GenerateOrders.createSingleOrderFileWithMultipleProducts(updatedData);
        System.out.println();
    }

    @Given("Multiple orders with one product per order created with following parameters")
    public void multipleOrdersWithOneProductPerOrderCreatedWithFollowingParameters(DataTable dt) {
        List<List<String>> rows = dt.asLists();
        List<List<String>> updatedData = new ArrayList<List<String>>();
        List<String> orderReferenceNumbers = new ArrayList<>();
        String orderIdentifier;
        int counter = 1;

        for (List<String> row : rows) {
            String[] lineArray = row.toArray(new String[0]);
            if (counter > 1) {
                orderIdentifier = Utilities.generateRandomOrderReference();
                lineArray[0] = orderIdentifier;
                orderReferenceNumbers.add(orderIdentifier);
            }
            updatedData.add(Arrays.asList(lineArray));
            counter += 1;
        }
        scenario.attach("Order Reference Numbers: " +  convertArraylistToCommaDelimitedString(orderReferenceNumbers), "text/plain", "Order Reference Numbers");
        GenerateOrders.createSingle850DocumentWithMultipleOrders(updatedData);
        System.out.println();
    }


    private String convertArraylistToCommaDelimitedString(List<String> list) {
        String strList = list.toString();

        strList = strList.replace("[", "")
                .replace("]", "")
                .replace(" ", "");

        return strList;
    }

    @Then("Navigates to the Edi find configurations like this page")
    public void navigatesToTheEdiFindConfigurationsLikeThisPage() {
        AdminEdiPage.goToAdminEdiPage();
        AdminEdiPage.searchForConfigurations("1377");
    }

    @Then("Run the configuration specified")
    public void runTheConfigurationSpecified() {
        AdminEdiPage.findSpecifiedRowByValue("1377");
        AdminEdiPage.runSpecifiedConfiguration("1377");
        System.out.println();
    }
}
