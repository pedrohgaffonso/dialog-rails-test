    const express = require('express')

    const server = express()

    const app = express();
        app.use("/", express.static('./views/'));


    server.get("/", (req, res) => {
            res.sendFile(__dirname + "/views/index.html")
          });

          const PORT = process.env.PORT || 3001;
          app.listen(PORT, () => {
            console.log(`server running on port: ${PORT}`);
          });          