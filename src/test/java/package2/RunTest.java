package package2;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

/**
 * Created by riteshkumar on 27/11/2015.
 */

@RunWith(Cucumber.class)
@CucumberOptions(format= { "html:target/cucumberreports"}, tags="@new")

public class RunTest {
}
