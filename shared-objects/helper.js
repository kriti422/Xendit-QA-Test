const buttonLocation =  {
    '1': {x: 0.14, y: 0.73 },
    '2': {x: 0.32, y: 0.73 },
    '3': {x: 0.5, y: 0.73 },
    '4': {x: 0.14, y: 0.59 },
    '5': {x: 0.32, y: 0.59 },
    '6': {x: 0.5, y: 0.59 },
    '7': {x: 0.14, y: 0.46 },
    '8': {x: 0.32, y: 0.46 },
    '9': {x: 0.5, y: 0.46 },
    '0': {x: 0.14, y: 0.855 },
    '/': {x: 0.67, y: 0.46 },
    'x': {x: 0.67, y: 0.59 },
    '-': {x: 0.67, y: 0.73 },
    '+': {x: 0.67, y: 0.855 },
    '=': {x: 0.857, y: 0.855 },
    'C': {x: 0.857, y: 0.33 },
    '.': {x: 0.32, y: 0.855 }
    
};

const getButtonLocation = (height, width, button) => {
    const btn = buttonLocation[button];
    return { x: Math.floor(width * btn.x), y: Math.floor(height * btn.y) };
};

module.exports = {
    
    performOperations: async (driver, strValue1, strValue2, strOperator) => {
        // this will help to switch to the iframe and find the element.
        driver.switchTo().frame(await driver.findElement(By.id("fullframe")));
        
        return driver.findElement(By.id('canvas')).then(canvas => {
            let height = '';
            let width = '';
            canvas.getSize().then(e => {
                height = e.height;
                width = e.width;
            }).then(_ => {
                strValue1.split('').map(char => {
                    return driver.actions().mouseMove(canvas, getButtonLocation(height, width, char)).click().perform();
                });
                driver.actions().mouseMove(canvas, getButtonLocation(height, width, strOperator)).click().perform();
                
                strValue2.split('').map(char => {
                    return driver.actions().mouseMove(canvas, getButtonLocation(height, width, char)).click().perform();
                });
                driver.actions().mouseMove(canvas, getButtonLocation(height, width, '=')).click().perform();
                // Just to show the result for a while
                driver.sleep(5000);
            });
            
            
        });
    },
    takeScreenshot: async (name) => {
        const fs = require("fs");
        imagePath = "./reports/" + name + ".png";
        webElement = driver.findElement(By.id("canvas"));
        return driver.takeScreenshot().then(data => {
            var tempData = data.replace(/^data:image\/png;base64,/, "");
            fs.writeFileSync(imagePath, tempData, "base64");
        });
    }
}