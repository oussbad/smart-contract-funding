//import 
var express=require('express'); 
const { status } = require('express/lib/response');
//instantiate sever
var server = express();
//configurer les routes 
server.get('/',function(req  ,res){
    res.setHeader('Content-Type','text/html');
    res.status(200).send('<h1>bonjeur sur mon server </h1>');
});
//lanch server
server.listen(8080,function(){
console.log('server en ecout :');
});