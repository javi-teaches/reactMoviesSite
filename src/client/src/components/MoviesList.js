import React, { Component } from 'react';

class MoviesList extends Component {
	constructor () {
		super();
		this.state = {
			movies: [{
				title: 'Inidiana Jones',
				overview: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A minus, similique perspiciatis sit veniam odio deleniti! Voluptate quos quia animi molestiae impedit eaque repudiandae necessitatibus exercitationem id, consequuntur repellendus alias',
				releaseDate: '2020-05-11',
				poster: 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/06/29/10/indiana-jones.jpg'
			}]
		}
	}

	componentDidMount () {
		fetch('/api')
			.then(response => response.json())
			.then(data => {
				this.setState(prevState => {
					return { movies: [...prevState.movies, ...data] }
				});
				// this.setState({movies: [...this.state.movies, ...data]});
			})
	}

	render () {
		console.log('ESTADO MOVIES');
		console.log(this.state.movies);
		return (
			<h2>Movies</h2>
		)
	}
}

export default MoviesList;