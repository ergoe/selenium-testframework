package web.pages;

import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

public class AdminProductFileImportPage extends BasePage{

    public final static String ADMIN_PRODUCT_FILE_IMPORT_PAGE_URL = "http://admindev.5stardeal.local/admin/new/Admin/Product/Import?re=!";

    public final static By CHOOSE_FILE_BUTTON = By.cssSelector("input#uploadMe");
    public final static By PRODUCTS_HOVER_LINK = By.linkText("Products");
    public final static By FIRST_ROW_CONTAINS_COLUMN_NAMES = By.id("IsFirstRowColumnNames");
    public final static By CREATE_NEW_PRODUCTS_FROM_FILE = By.id("TrademarkGlobal.Data.Reporting.Core.IO.ProductCreateNewImportProcessor");
    public final static By MAP_FILE_BUTTON = By.cssSelector("form#uploadForm > button[type=\"submit\"]");

    public static void goToProductFileImportPage() {
        open(ADMIN_PRODUCT_FILE_IMPORT_PAGE_URL);
    }

    public static String clickChooseFileButton() {
        return $(CHOOSE_FILE_BUTTON)
                .waitUntil(visible, TIMEOUT)
                .getText();
    }

    public static void clickFirstRowContainsColumnNames() {
        $(FIRST_ROW_CONTAINS_COLUMN_NAMES)
                .waitUntil(visible, TIMEOUT)
                .click();
    }

    public static void selectCreateNewProductsRadioButton() {
        $(CREATE_NEW_PRODUCTS_FROM_FILE)
                .waitUntil(visible, TIMEOUT)
                .click();
    }

    public static void clickMapFileButton() {
        $(MAP_FILE_BUTTON)
                .waitUntil(visible, TIMEOUT)
                .click();
    }

    public static void hoverOverLinkMakeSelection() {
        $(PRODUCTS_HOVER_LINK)
                .hover();
    }

}
