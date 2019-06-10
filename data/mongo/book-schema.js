'use strict';

const mongoose = require('mongoose');
require('./bookshelves-model.js');

const books = mongoose.Schema({
  title: {type: String, required: true},
  author: {type: String, required: true},
  isbn: {type: String, required: true},
  image_url: {type: String, required: false},
  description: {type: String, required: true},
}, {toObject: {virtuals: true}, toJSON: {virtuals: true}, id: false});

books.virtual('bookshelves', {
  ref: 'bookshelves',
  localField: 'bookshelf',
  foreignField: 'name',
  justOne: false,
});

module.exports = mongoose.model('books', books);
