const mysql = require('mysql');

exports.pool = mysql.createPool({
    connectionLimit:50,
    host:'149.129.59.121',
    user:'root',
    password:'aliyun1998',
    database:'medical',
    multipleStatements: true 
})