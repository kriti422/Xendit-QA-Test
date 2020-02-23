const { performOperations,takeScreenshot } = require('./../shared-objects/helper');

module.exports = function () {
    this.Given(/^Open chrome browser and start application$/, function () {
        return driver.get('https://www.online-calculator.com/full-screen-calculator/');
    });
    
    this.When(/^I enter following values and press CE button$/,async function (dataTable) {
        var strValue1 = dataTable.raw()[0][1];
        var strValue2 = dataTable.raw()[1][1];
        var strOperator = dataTable.raw()[2][1];
       return performOperations(driver, strValue1, strValue2, strOperator);
        
    });
    
    this.Then(/^I should be able to see$/, function (table) {
        /* UI assertions to be implemented here.
        ** But since its a canvas, values cannot be taken directly by inspecting and asserted.
        ** It needs to be done via UI Validation tool like Applitools Eye. 
        ** Since being new to this functionality, i am trying to implement as possibly i can. Please read the Read File.
        */
        return takeScreenshot('I should be able to see ' + table.raw()[0][1] + ' as result');
    });


};