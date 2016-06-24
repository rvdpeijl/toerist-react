express = require "express"
app = express()
path = require "path"

app.use(express.static(path.join(__dirname, "dist")))

app.get "*", (req, res) ->
    res.sendFile path.join(__dirname, "dist", "index.html")

app.listen 5000
console.log "Listening on port 5000"