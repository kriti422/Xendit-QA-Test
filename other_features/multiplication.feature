Feature: Test multiplication scenarios

@multiplication
Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| 	0			|   999999999		|		*			|    0 			 	|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| 	0.00000001 	|   999999999 		|		*			|  10e-16			|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| 	0.00000001	|   0.00000001		|		*			|    1e-16   		|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	|  	999999999   |   999999999		|		*			|  10e+17         	|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| -111111111    | -999999999		|       *			|   -1.111111e+17	|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| 0				| 0					|       *    		|    0				|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| 987654321    | 123456789			|       *			|   1.219326e+17	|