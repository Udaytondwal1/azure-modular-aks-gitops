const express = require("express");

const app = express();

const PORT = process.env.PORT || 8000;

app.get("/health", (req, res) => {
    res.json({
        status: "healthy",
        service: "order-api",
        version: "1.0.0"
    });
});

app.get("/", (req, res) => {
    res.json({
        message: "CloudDrove Production API running on AKS"
    });
});

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Order API running on port ${PORT}`);
});