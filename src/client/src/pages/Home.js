import React from 'react';

// Components
import MoviesList from '../components/MoviesList';
// import Counter from '../components/Counter';
import Form from '../components/Form';

function Home () {
	return (
		<div className="container">
			{/* <Counter /> */}
			<Form />
			<hr/>
			<MoviesList testing='Just for test' />
			<hr/>
		</div>
	)
}


export default Home;