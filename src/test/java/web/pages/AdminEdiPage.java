package web.pages;

import org.openqa.selenium.By;

import java.awt.desktop.SystemEventListener;
import java.util.List;
import java.util.Map;
import java.util.Timer;

import static com.codeborne.selenide.Condition.enabled;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

public class AdminEdiPage extends BasePage{

//    public final static String ADMIN_LOGIN_PAGE_URL = "http://admindev.5stardeal.local/admin/new/admin/login";
    public final static String ADMIN_EDI_PAGE_URL = "http://quest-www4.tmkgl.local/admin/new/Admin/Edi/";


    public final static By FIND_CONFIGURATIONS_FIELD = By.id("IsKnownBy");
    public final static By FIND_BUTTON_SELECTOR = By.xpath("//button[contains(@value, 'Find')]");


    ////tr[contains(., '1377')]

    public static final By findSpecifiedRowByValue(String value) {
        String xpathSelectorString = String.format("//td[contains(., '%s')]", value);
        return By.xpath(xpathSelectorString);
    }

    private static final By byRunConfigurationButtonForSpecifiedConfig(String config) {
        String xpathSelectorString = String.format("//tr[contains(., '%s')]/td[contains(.,'Logs')]/a[contains(., 'Run')]", config);
        return By.xpath(xpathSelectorString);
    }

    public static void goToAdminEdiPage() {
        open(ADMIN_EDI_PAGE_URL);
        $(FIND_BUTTON_SELECTOR)
                .waitUntil(enabled, TIMEOUT);
    }

    private static void enterTextInFindConfigurationsField(String item) {
        $(FIND_CONFIGURATIONS_FIELD)
                .waitUntil(visible, TIMEOUT)
                .scrollTo()
                .sendKeys(item);
    }

    private static void clickFindConfigurationsButton() {
        $(FIND_BUTTON_SELECTOR)
                .waitUntil(enabled, TIMEOUT)
                .scrollTo()
                .click();
    }

    public static void searchForConfigurations(String configuration) {
        enterTextInFindConfigurationsField(configuration);
        clickFindConfigurationsButton();
        $(findSpecifiedRowByValue(configuration))
                .waitUntil(visible, TIMEOUT);
    }

    public static void runSpecifiedConfiguration(String config) {
        $(byRunConfigurationButtonForSpecifiedConfig(config))
                .waitUntil(enabled, TIMEOUT)
                .click();
        System.out.println();
    }


}
