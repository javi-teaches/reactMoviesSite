import React from 'react';

// Components
import MoviesList from '../components/MoviesList';
import Counter from '../components/Counter';

function Home () {
	return (
		<div className="container">
			<Counter />
			<MoviesList testing='Just for test' />
			<hr/>
		</div>
	)
}


export default Home;