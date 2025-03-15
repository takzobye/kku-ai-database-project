// lib/db.js
import mysql from 'mysql2/promise';

const dbConfig = {
  host: 'localhost',
  user: 'root',
  password: '000000',
  database: 'kku_ai_project',
};

export async function getConnection() {
  return await mysql.createConnection(dbConfig);
}