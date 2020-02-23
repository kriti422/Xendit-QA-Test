Feature: Test division scenarios

@division
Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| 	111111111	|   999999999		|		/			|  0.11111111 	 	|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| 	999999999 	|   0   			|		/			|  Error   			|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| 	0			|   999999999		|		/			|    0   			|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	|  	0	 		|   0				|		/			|  Error         	|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| 0.99999999    | 999999999			|       /			|   9e-10			|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| 0.1			| 999999999			|       /    		|    1e-10			|


Given Open chrome browser and start application
When I enter following values and press CE button
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|			
Then I should be able to see
			|	expected |<expected>|
Examples:
		| value1  		| value2 	    	| operator			| expected			|
    	| -111111111    | 999999999			|       /			|   -0.111111111	|