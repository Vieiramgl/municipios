const express = require("express");
require("dotenv").config();

const app = express();
app.use(express.json());

const municipiosRouter = require("./routes/municipios");
app.use("/municipios", municipiosRouter);

app.get("/", (req, res) => {
  res.send("API de Municípios rodando!");
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`API rodando em http://localhost:${PORT}/municipios`));
