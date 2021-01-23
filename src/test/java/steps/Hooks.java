package steps;

import com.codeborne.selenide.WebDriverRunner;
import com.codeborne.selenide.Configuration;
import com.codeborne.selenide.Selenide;
import io.cucumber.java.Scenario;
import web.CrossBrowserRemoteWebDriver;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import org.openqa.selenium.remote.RemoteWebDriver;

import static com.codeborne.selenide.Selenide.*;

public class Hooks {
    private String browser;
    private String env;
    private RemoteWebDriver webDriver;
    private CrossBrowserRemoteWebDriver crossBrowserRemoteWebDriver;
    //private static final Logger log = LogManager.getLogger(steps.Hooks.class.getName());

    @Before
    public void InitializeTest() {
//        crossBrowserRemoteWebDriver = new CrossBrowserRemoteWebDriver();
//        browser = "chrome";
//        try {
//            webDriver = crossBrowserRemoteWebDriver.createInstance(browser);
//            WebDriverRunner.setWebDriver(webDriver);
//        } catch (Exception ex) {
//            System.out.println(ex.getMessage());
//        }
//
////        Configuration to run it locally --> Configuration.browser ="browser" <--
////        Configuration.browser = browser;
//        Configuration.startMaximized = false;
//        Configuration.reportsFolder = "target/failsafe-reports/Surefire suite/";
//        System.out.println("Opening the browser: " + Configuration.browser);
    }

    @After
    public void TearDownTest(Scenario scenario) {

        String test = scenario.getName();
        if (scenario.isFailed()) {
            Selenide.screenshot("FAILED:" + test);

        } else {
//            System.out.println("Test: " + test + " Passed");
//            Selenide.screenshot(test);
        }
        clearBrowserCookies();
        try {
            WebDriverRunner.getWebDriver().quit();
        } catch(Exception ex) {
            System.out.println("No webdriver to shutdown");
        }
    }


}
