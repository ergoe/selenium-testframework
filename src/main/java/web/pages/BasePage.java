package web.pages;

import com.codeborne.selenide.Condition;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class BasePage {

    public static final String URL = "";
    public static final int TIMEOUT = 6000;

    public static void waitForPage(By selector) {
        $(selector).waitUntil(Condition.visible, TIMEOUT);
    }

}
