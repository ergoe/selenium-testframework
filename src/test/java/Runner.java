import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import org.testng.annotations.DataProvider;


@CucumberOptions(
        features = {"src/test/resources/features"},
        glue = {"steps"},
        plugin = {"pretty", "json:target/failsafe-reports/Surefire suite//CucumberTestReport.json", "html:target/index.html"},
        monochrome= true,
        tags = "@xmltest",
        dryRun= false
)
// freight order prodcuct code: 83-DT5910
// freight tag @freight
// Zero inventory product code: 10-0700
// Zero tag @zero
public class Runner extends AbstractTestNGCucumberTests  {
    @Override
    @DataProvider(parallel = false)
    public Object[][] scenarios() {
        return super.scenarios();
    }
}
