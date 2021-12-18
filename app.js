const express = require('express')
const app = express();
const mysql = require('mysql')
const bodyParser = require('body-parser')
app.use('/static', express.static('assets'));




var pool = mysql.createPool({
    connectionLimit : 20,
    host : 'localhost',
    user : 'root',
    password : 'root',
    database : 'prueba_bd'
})

app.set('view engine','ejs')
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended : true}))


app.get('/',function (req,res) { 
    pool.getConnection(function (err, connection) { 
        const query = `SELECT * FROM producto WHERE est = 1`
        connection.query(query,function (error,filas,campo) { 
            res.render('index',{producto : filas})
         })
         connection.release()
     })

 })

 app.post('/guardar',function(req,res) {
    pool.getConnection(function (err,connection) { 
        if (req.body.prod_nom == "" || req.body.prod_desc == "" || req.body.prod_precio == "")  {
            res.redirect('/') 
        }else{
            const query = `INSERT INTO producto (prod_id, prod_nom, prod_desc, prod_precio, est) VALUES (NULL, ${connection.escape(req.body.prod_nom)}, ${connection.escape(req.body.prod_desc)}, ${connection.escape(req.body.prod_precio)}, '1'); `
            connection.query(query,function (error,filas,campo) {  
                res.redirect('/')
             })
             connection.release()
        }
     })
 })

 app.get('/actualizar-form',function(req,res) {
    pool.getConnection(function (err,connection) { 
        const query = `SELECT * FROM producto WHERE prod_id =${connection.escape(req.query.prod_id)} `
        connection.query(query,function (error,filas,campo) {  
            res.render('actualizar',{producto : filas[0]})
         })
         connection.release()
     })
 })

 app.post('/actualizar-producto',function(req,res) {
    pool.getConnection(function (err,connection) { 
        if (req.body.prod_nom == "" || req.body.prod_desc == "" || req.body.prod_precio == "")  {
            res.redirect('/') 
        }else{
            console.log(req.body);
            const query = `UPDATE producto SET prod_nom=${connection.escape(req.body.prod_nom)}, prod_desc=${connection.escape(req.body.prod_desc)}, prod_precio=${connection.escape(req.body.prod_precio)} WHERE prod_id = ${connection.escape(req.body.prod_id)}; `
            connection.query(query,function (error,filas,campo) {  
                res.redirect('/')
             })
             connection.release()
        }
     })
 })

 app.get('/eliminar-producto',function(req,res) {
    pool.getConnection(function (err,connection) { 
            console.log(req.body);
            const query = `UPDATE producto SET est = 0 WHERE prod_id = ${connection.escape(req.query.prod_id)}; `
            connection.query(query,function (error,filas,campo) {  
                res.redirect('/')
             })
             connection.release()
     })
 })

 
 app.listen(8080, function(){
    console.log("Servidor iniciado");
  });
