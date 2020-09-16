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
			res.json(movies);
		});
});

router.post('/', (req, res) => {
	Movie.create(req.body)
		.then(dbRes => {
			res.status(200).json({
				status: 200,
				message: 'todo pipi cucu',
			});
		})
	
})

module.exports = router;
