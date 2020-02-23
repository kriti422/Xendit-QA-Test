Feature: Test Addition scenarios

@addition
Given Open chrome browser and start application
When I enter following values and press = button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  	| value2	| operator	| expected	|
    	| 999999999	| 999999999	| +			| 2e+9		|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected		|
    	| 	0.00000001 	|   0.00000001 		|		+			|  2e-8			|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| 	0.00000001	|   999999999		|		+			|    999999999   	|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	|  	123456789   |   987654321		|		+			|  1.111111e+9     	|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| -111111111    | -999999999		|       +			|   -1.111111e+17	|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| 0				| 0					|       +    		|    0				|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| 987654321    | 123456789			|       +			|   1.219326e+17	|