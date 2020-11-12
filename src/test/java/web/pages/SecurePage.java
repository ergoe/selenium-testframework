package web.pages;

import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;

public class SecurePage extends BasePage {

    public final static By BANNER_SELECTOR = By.cssSelector("div#content h2");

    public static String getBannerText() {
        return $(BANNER_SELECTOR)
                    .waitUntil(visible, TIMEOUT)
                    .getText();
    }

}
