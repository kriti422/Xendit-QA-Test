Feature: Test subtraction scenarios

@subtraction
Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  			| value2 				| operator			| expected	 	|
    	| 	111111111 		|   999999999			|		-			| 	-888888888	|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 		| operator			| expected		|
		|0.11111111		| 999999999		|		-			| -999999999 	|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 		| operator			| expected	   |
		|-999999999		| 111111111 	|		-			| -1.111111e+9 |


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 		| operator			| expected	 	|
		|-999999999		| -111111111 	|		-			| -888888888	|