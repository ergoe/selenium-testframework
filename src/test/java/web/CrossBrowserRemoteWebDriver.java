package web;
import org.apache.commons.lang3.StringUtils;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import java.net.MalformedURLException;
import java.net.URL;


public class CrossBrowserRemoteWebDriver {
//    Local Docker grid: http://127.0.0.1:4444/wd/hub
    private String hubUrl = "http://127.0.0.1:4444/wd/hub";

    //private static final Logger log = LogManager.getLogger(CrossBrowserRemoteWebDriver.class.getName());
    private RemoteWebDriver innerDriver;

    private URL seleniumGridUrl() throws MalformedURLException {
        String environmentUrl = StringUtils.defaultIfBlank(System.getProperty("seleniumUrl"), hubUrl);
        URL url = new URL(environmentUrl);
        return url;
    }

    public RemoteWebDriver createInstance(String browserName) throws MalformedURLException {
        RemoteWebDriver remoteWebDriver = null;
        if (browserName.toLowerCase().contains("firefox")) {
            remoteWebDriver = new RemoteWebDriver(seleniumGridUrl(), firefoxCapabilities());
            return remoteWebDriver;
        }

        if (browserName.toLowerCase().contains("chrome")) {
            try {
                remoteWebDriver = new RemoteWebDriver(seleniumGridUrl(), chromeCapabilities());
            } catch (Exception ex) {
                System.out.println("");
            }
            innerDriver = remoteWebDriver;
            return innerDriver;
        }
        innerDriver = remoteWebDriver;
        return innerDriver;
    }

    private static DesiredCapabilities firefoxCapabilities() {
        DesiredCapabilities capabilities = DesiredCapabilities.firefox();
        capabilities.setBrowserName("firefox");

        return capabilities;
    }

    private static DesiredCapabilities chromeCapabilities() {
        DesiredCapabilities capabilities = DesiredCapabilities.chrome();
        capabilities.setBrowserName("chrome");

        return capabilities;
    }
}
