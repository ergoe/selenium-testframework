package steps;

import edu.emory.mathcs.backport.java.util.Arrays;
import order.GenerateOrders;
import framework.Utilities;
import framework.database.JdbcSQLServerConnection;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import web.pages.AdminEdiPage;

import java.util.*;

public class OrderStepdefs {

    private Scenario scenario;
    private Map<String, Object> testData;
    private static List<String> orderReferenceNumbers;

    @Before
    public void beforeStep(Scenario scenario) {
        this.scenario = scenario;
        testData = new HashMap<>();
        orderReferenceNumbers = new ArrayList<>();
    }

    @Given("Single Order with multiple one or more products created with following parameters")
    public void singleOrderWithMultipleProductsCreatedWithFollowingParameters(DataTable dt) {
        List<List<String>> rows = dt.asLists();
        List<List<String>> updatedData = new ArrayList<List<String>>();
        String orderIdentifier = Utilities.generateRandomOrderReferenceGuid();

        int counter = 1;
        for (List<String> row : rows) {
            String[] lineArray = row.toArray(new String[0]);
            if (counter > 1) {
                lineArray[0] = orderIdentifier;
            }
            updatedData.add(Arrays.asList(lineArray));
            orderReferenceNumbers.add(orderIdentifier);
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
                orderIdentifier = Utilities.generateRandomOrderReferenceGuid();
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

    @When("Connect to db")
    public void connectToDb() {
//        JdbcSQLServerConnection.getConnection();
        JdbcSQLServerConnection.getConnection();
    }

    @When("User creates ArrayOfOrder xml using {string} file")
    public void userCreatesArrayOfOrderXml(String filename, DataTable dt) {
        List<Map<String, String>> data = dt.asMaps();
        GenerateOrders generateOrders = new GenerateOrders();
        generateOrders.createOrderFromXmlFile(filename, data);
    }

    // write to a file with multiple threads
//    https://dzone.com/articles/writing-to-a-csv-file-from-multiple-threads
}
