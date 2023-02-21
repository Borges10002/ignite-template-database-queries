import express from "express";
import "reflect-metadata";

import { router } from "./routes";
import "./shared/container";
import "./database";

const app = express();

app.use(express.json());
app.use(router);

const port = 3333;

app.listen(port, () => console.log(`Server is Running! ${port}`));
