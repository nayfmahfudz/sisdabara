let mysql = require("mysql2");
  
// create the connection to database
exports.db = mysql.createPool({
  connectionLimit: 15,
  queueLimit: 10,
  host: '127.0.0.1',
  user: 'root',
  password: '',
  database: 'bencana'
}); 
