import WebSocket from "ws";

const client = new WebSocket("ws://127.0.0.1:3030")

client.on("message", (buff, isbinary) =>{
    console.log(buff.toString());
})

client.on("open", () => {
    client.send("moshi moshi")
})

client.on("error", console.log)