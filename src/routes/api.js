const express = require('express');
const router = express.Router();

const { Movie } = require('../database/models');

router.get('/', (req, res) => {
	Movie.findAll()
		.then(movies => {
			res.send(movies);
		});
});

module.exports = router;
