package web.pages;

import org.openqa.selenium.By;

import java.util.List;
import java.util.Map;

import static com.codeborne.selenide.Condition.enabled;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

public class AdminLoginPage extends BasePage{

//    public final static String ADMIN_LOGIN_PAGE_URL = "http://admindev.5stardeal.local/admin/new/admin/login";
    public final static String ADMIN_LOGIN_PAGE_URL = "http://quest-www4.tmkgl.local/admin/new/Admin/Login";


    public final static By USERNAME_SELECTOR = By.id("Login");
    public final static By PASSWORD_SELECTOR = By.id("Password");
    public final static By LOGIN_BUTTON_SELECTOR = By.xpath("//span[contains(@class, 'ui-icon-key')]");

    public static void goToAdminLoginPage() {
        open(ADMIN_LOGIN_PAGE_URL);
    }

    private static void enterUsername(String username) {
        $(USERNAME_SELECTOR)
                .waitUntil(visible, TIMEOUT)
                .scrollTo()
                .sendKeys(username);
    }

    private static void enterPassword(String password) {
        $(PASSWORD_SELECTOR)
                .waitUntil(visible, TIMEOUT)
                .scrollTo()
                .sendKeys(password);
    }

    private static void clickLoginButton() {
        $(LOGIN_BUTTON_SELECTOR)
                .waitUntil(enabled, TIMEOUT)
                .scrollTo()
                .click();
    }

    public static void loginInToSite(List<Map<String, String>> data) {
        enterUsername(data.get(0).get("username"));
//        enterPassword(data.get(0).get("password"));
        enterPassword("L@goe5910an");
        clickLoginButton();
    }


}
