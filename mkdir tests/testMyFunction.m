classdef testMyFunction < matlab.unittest.TestCase

methods(Test)

function testSquare(testCase)

result = myFunction(4);

testCase.verifyEqual(result,16);

end

end

end
