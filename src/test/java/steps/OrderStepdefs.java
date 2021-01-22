package steps;

import framework.GenerateOrders;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class OrderStepdefs {
    @Given("Single Order with multiple products created with following parameters")
    public void singleOrderWithMultipleProductsCreatedWithFollowingParameters(DataTable dt) {
        List<List<String>> rows = dt.asLists();
        UUID orderUUID = UUID.randomUUID();

        GenerateOrders.createSingleOrderFileWithMultipleProducts(rows, orderUUID);
        System.out.println();


    }
}
