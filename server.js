const express = require("express");
const sum = require("./sum");

const app = express();
// eslint-disable-next-line no-undef
const VERSION = process.env.APP_VERSION || "v1";
// eslint-disable-next-line no-undef
const NAME = process.env.APP_NAME || "sum-service";
// eslint-disable-next-line no-undef
const PORT = process.env.PORT || 3000;

// URL/sum?a=1&b=2
app.get("/sum", (request, response) => {
    // Get the parameters
    const firstValue = Number(request.query.firstValue);
    const secondValue = Number(request.query.secondValue);
    
    // Run the sum
    const result = sum(firstValue, secondValue);

    // Return the output
    response.json({
        service: NAME,
        version: VERSION,
        output: result
    });
});

app.get("/version", (request, response) => {
    response.json({
        version: VERSION || "v1"
    });
});

app.listen(PORT, () => {
    console.log(`${NAME} running. Version: ${VERSION}. PORT: ${PORT}`);
});