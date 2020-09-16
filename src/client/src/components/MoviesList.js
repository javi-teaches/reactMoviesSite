import React, { useState, useEffect, useRef } from 'react';

const MoviesList = (props) => {

	const moviesTitle = useRef(null);

	const [movies, setMovies] = useState([]);
	const [users, setUsers] = useState([]);

	useEffect(() => {
		fetch('/api')
			.then(response => response.json())
			.then(data => {
				setMovies(data)
			})
		
		fetch('https://jsonplaceholder.typicode.com/users')
			.then(response => response.json())
			.then(data => {
				setUsers(data);
			})
			
		// console.log(moviesTitle.current);
		moviesTitle.current.style.color = 'salmon';
	}, []);

	return (
		<React.Fragment>
			<h2 ref={moviesTitle} >Movies v2</h2>
			<p>{ props.testing }</p>
			<div className="row">
				<div className="col-6">
					<ol>
						{
							movies.map(oneMovie => {
								return (
									<li key={oneMovie.id}>
										{oneMovie.title} <br />
										<img src={oneMovie.poster} width="200" alt={oneMovie.title} />
										<p>{oneMovie.overview}</p>
									</li>
								)
							})
						}
					</ol>
				</div>
				<div className="col-6">
					<ol>
						{
							users.map(oneUser => {
								return (
									<li key={oneUser.id}>
										{oneUser.name} <br />
										<a href={`mailto:${oneUser.email}`}>{oneUser.email}</a>
									</li>
								)
							})
						}
					</ol>
				</div>
			</div>
			
		</React.Fragment>
	)
}

export default MoviesList;