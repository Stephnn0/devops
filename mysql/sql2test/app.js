const express = require('express');
const mysql = require('mysql2/promise');

const app = express();
const PORT = process.env.PORT || 3000;



// MySQL connection pool
const pool = mysql.createPool({
    host: '172.19.0.2', // docker container ip address
    user: 'root',
    password: 'Helloworld12', // Replace with your MySQL root password
    database: 'db', // Replace with your database name
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
  });

  // Route to execute SQL queries
app.get('/query', async (req, res) => {
    try {
      const { query } = req.query;
      if (!query) {
        return res.status(400).json({ error: 'Query parameter is required' });
      }
  
      const [rows] = await pool.query(query);
      res.json({ data: rows });
    } catch (error) {
      console.error('Error executing SQL query:', error);
      res.status(500).json({ error: 'Internal server error' });
    }
  });

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
  });

