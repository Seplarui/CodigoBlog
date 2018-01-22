var express = require('express');
var mysql=require('mysql');
var router = express.Router();

var connection=mysql.createConnection({
  host:'localhost',
  user:'root',
  password:'',
  database:'cine'
});


/* GET home page. */
router.get('/', function(req, res, next) {

  connection.query('select * from peliculas', function(err, rows, fileds){
    if(err) throw err;
    console.log('El resultado es: ', rows[0]);
    res.json(rows);
  })


});

module.exports = router;
