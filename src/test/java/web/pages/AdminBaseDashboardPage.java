package web.pages;

import org.openqa.selenium.By;

import java.util.List;
import java.util.Map;

import static com.codeborne.selenide.Condition.enabled;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

public class AdminBaseDashboardPage extends BasePage{

    public final static String ADMIN_LOGIN_PAGE_URL = "http://admindev.5stardeal.local/admin/new/Admin";

    public final static By WELCOME_DROPDOWN = By.cssSelector("div#welcome > span");


    public static void goToLoginPage() {
        open(ADMIN_LOGIN_PAGE_URL);
    }

    public static String getUserProfileDropdownText() {
        return $(WELCOME_DROPDOWN)
                .waitUntil(visible, TIMEOUT)
                .getText();
    }

}
