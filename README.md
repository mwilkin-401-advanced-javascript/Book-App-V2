# Book-App-V2
Book App refactored from Postgres(SQL) to Mondo(noSQL) for data storage and modularize the server

[![Build Status](https://www.travis-ci.com/mwilkin-401-advanced-javascript/lab-04.svg?branch=master)](https://www.travis-ci.com/mwilkin-401-advanced-javascript/lab-04)

### Author: Matt Wilkin

### Links and Resources

[submission PR](https://github.com/mwilkin-401-advanced-javascript/lab-10/pull/1)

[travis](https://www.travis-ci.com/mwilkin-401-advanced-javascript/lab-10)

[heroku](https://secret-eyrie-61196.herokuapp.com/)

[UML]()

### Documentation

Dependencies
jest
eslint
dotenv
ejs
express
method-override
pg
superagent

Modules

Exported Values and Methods

### Setup

#### environment requirements

* `PORT` - 3000
* `MONGODB_URI` - mongodb://localhost:27017/bookAppV2

Install dependancies

`npm install`

Running the app

`npm start`


### Endpoints

* Endpoint: GET `'/'` -> Show all

* Endpoint: POST `'/searches'` -> Create search

* Endpoint: GET `'/searches/new'` -> New search

* Endpoint: GET `'/books/:id'` -> Get certain book

* Endpoint: POST `'/books'` -> Create book

* Endpoint: PUT `'/books/:id'` -> Update certain book

* Endpoint: DELETE `'/books/:id'` -> Delete certain book


### Tests

How do you run tests?

npm test

What assertions were made?
What assertions need to be / should be made?

_________________
_________________

Project Guidelines

Requirements
The UI must remain unchanged

All of the current routes must remain unchanged

Data must be served to the application from either Postgres (current implementation) or MongoDB

Assignment: Refactor Book App

Modularize it, so you can extend it

Modularize the server code, keeping the current postgres database and functionality in tact.

server.js should be a requireable module

index.js should be written to

require your server.js and start

Middleware functions should moved to appropriate files, perhaps in a middleware folder
routes.js should be written to handle routing

Move the route definitions to this file and use() them in your server

Move the route handling functions to a separate library file (e.g. pg.js), require them in your routes.js file, and ensure that your routes still operate

It might be a good idea to move the code that requires pg client and does the connection to the database into this file.

At this point, the server should be working the same, but whereas before, everything was in one file (server.js), now, we have things in correctly named files according to their purpose.

The key change here is the addition of the pg.js file which does the postgres connection and has the functions that run when the routes are accessed. It’s the only file in the system now that knows about postgres.

Next, add support for mongo.

You will need a toggle or setting of some sort to switch between using Postgres and Mongo database back-ends

You will need to create mongoose schemas for books and bookshelves

Remember: the routes must work the same way regardless of whether you’re using Mongo or PG as the data source

Pro Tip: Be sure to send data back to the EJS rendering functions that has the same shape as what the Postgres version was doing

Recommendations

Focus on how to convert the PG/SQL Logic into Mongo Equivalents

Do the Create route (post /books) first.

Search for books, add them

Verify that you can see them in the books collection

For now, ignore the bookshelves logic. Just add the book!

Do the Get /books and /books:id routes next
This should allow you to see them rendering in the browser

Then work on the Update & Delete routes

Software Engineering Notes! When you refactor, the heart of the task is to keep things the same (visually and functionally) while completely replacing the underlying implementation

Implementation Notes & Advice

You are not required to use the “API Server” or RESTful routes that were developed as part of your lab assignments during this block.

### Testing

Write a complete set of model and server/route tests using supergoose

Your tests should work unchanged regardless of which database system is active!
Stretch Goals

Wire in the bookshelves. These will need to be virtually joined in the mongoose schemas. Once you’ve done that, then you can revisit the Create and Update routes and wire that logic back in.

Can you a RESTful API instead of direct mongo methods to do the database work?

Can you create data models for PG and Mongo that look the same, that have the logic, but that simply implement the CRUD operations differently? (think back to how we did the memory vs mongo implementations)

Assignment Submission Instructions

Refer to the the lab submission instructions for the complete lab submission process and expectations