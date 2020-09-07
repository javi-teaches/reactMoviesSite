const express = require('express');
const router = express.Router();

const { Movie } = require('../database/models');

router.get('/', (req, res) => {
	Movie.findAll({
		order: [
			['title', 'DESC']
		]
	})
		.then(movies => {
			res.send(movies);
		});
});

router.post('', (req, res) => {
	res.send('Ok');
})

module.exports = router;
