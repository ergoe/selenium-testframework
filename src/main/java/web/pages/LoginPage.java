package web.pages;

import org.openqa.selenium.By;

import java.util.List;
import java.util.Map;

import static com.codeborne.selenide.Condition.enabled;
import static com.codeborne.selenide.Selenide.*;
import static com.codeborne.selenide.Condition.visible;

public class LoginPage extends BasePage {
    public final static String LOGIN_PAGE_URL = "http://the-internet.herokuapp.com/login";
    public final static By USERNAME_SELECTOR = By.id("username");
    public final static By PASSWORD_SELECTOR = By.id("password");
    public final static By LOGIN_BUTTON_SELECTOR = By.cssSelector("form#login i");

    public static void goToLoginPage() {
        open(LOGIN_PAGE_URL);
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
                .click();
    }

    public static void loginInToSite(List<Map<String, String>> data) {
        enterUsername(data.get(0).get("username"));
        enterPassword(data.get(0).get("password"));
        clickLoginButton();
    }


}
