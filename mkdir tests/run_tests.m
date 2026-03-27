import matlab.unittest.TestRunner
import matlab.unittest.plugins.XMLPlugin

suite = testsuite("tests");

runner = TestRunner.withTextOutput;

runner.addPlugin(XMLPlugin.producingJUnitFormat("test-results.xml"));

results = runner.run(suite);

assertSuccess(results)
This generates:
test-results.xml
