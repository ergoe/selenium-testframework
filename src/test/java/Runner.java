import io.cucumber.testng.AbstractTestNGCucumberTests;
import org.testng.annotations.DataProvider;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
        features = {"src/test/resources/features"},
        glue = {"steps"},
        plugin = {"pretty", "json:target/failsafe-reports/Surefire suite//CucumberTestReport.json", "html:target/cucumber-reports.html"},
        monochrome= true,
//        tags = {"@smoke"},
        dryRun= false
)

public class Runner extends AbstractTestNGCucumberTests{
        @Override
        @DataProvider(parallel = true)
        public Object[][] scenarios() {
            return super.scenarios();
        }
}
