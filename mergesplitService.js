const pgp = require("pg-promise")();
const db = pgp({
  host: process.env.DB_SERVER,
  port: process.env.DB_PORT,
  database: process.env.DB_USER,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
});

const express = require("express");
const app = express();
const port = process.env.PORT || 3000;
const router = express.Router();
router.use(express.json());

app.get("/", (req, res) => {
  res.status(200).send("Hello mergeSplit server is running").end();
});

app.use(router);
app.use((err, req, res) => {
    if (app.get('env') === "development") {
        console.log(err);
    }
    res.sendStatus(err.status || 500);
});
app.listen(port, () => console.log(`Listening on port ${port}`));

router.get("/scores", readScores);

function readScores(req, res, next) {
  db.many(
    "SELECT score FROM PlayerGame"
  )
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      next(err);
    });
}
