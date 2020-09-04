import React from 'react';

// Components
import MoviesList from '../components/MoviesList';

function Home () {
	return (
		<div className="container">
			<h1 className="text-danger">Soy la HOME</h1>
			<MoviesList />
			<hr/>
			<img src="/images/darthvader.jpg" alt=""/>
			<img src="/images/hulk.jpg" alt=""/>
			<img src="/images/luke.jpg" alt=""/>
		</div>
	)
}


export default Home;