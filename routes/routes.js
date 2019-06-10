'use strict';

const express = require('express');
const appRouter = express.Router();
const db = require('../db/pg.js');
// let db;

// const args = process.argv.slice(2);

// if(args[0] === 'mongo'){
//   db = require('../data/mongo/mongo.js');
//   console.log('running mongo');

// } else {
//   db = require('./pg.js');
//   console.log('running in pg');

// }


// API Routes
appRouter.get('/', db.getBooks);
appRouter.post('/searches', db.createSearch);
appRouter.get('/searches/new', db.newSearch);
appRouter.get('/books/:id', db.getBook);
appRouter.post('/books', db.createBook);
appRouter.put('/books/:id', db.updateBook);
appRouter.delete('/books/:id', db.deleteBook);

appRouter.get('*', (request, response) => response.status(404).send('This route does not exist'));

module.exports = appRouter;

