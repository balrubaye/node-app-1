const express = require('express');
const app = express();


app.get('/', (req, res)=>{
    res.send('hello i am node app');
});


app.listen(8081,()=>{
    console.log('listenning on port ', 8081);
})