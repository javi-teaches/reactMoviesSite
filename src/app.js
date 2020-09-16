const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');

const app = express();

app.use(logger('dev'));

app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.use(cookieParser());

app.use(express.static(path.join(__dirname, '../public')));

app.use('/application/', express.static(path.join(__dirname, './client/build/')));

const apiRouter = require('./routes/api');
app.use('/api', apiRouter);

app.get('/', (req, res) => {
	let htmlFile = path.resolve(__dirname, './client/build/index.html');
	return res.sendFile(htmlFile);
})

module.exports = app;
