const mysql = require('mysql');

exports.pool = mysql.createPool({
    connectionLimit:50,
    host:'localhost',
    user:'root',
    password:'root',
    database:'medical',
    multipleStatements: true 
})