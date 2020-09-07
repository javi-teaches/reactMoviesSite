import React, { Component, useState } from 'react';

class CounterOld extends Component {
	state = {
		value: 0
	}

	render () {
		return (
			<h2>Actual value: { this.state.value }</h2>
		)
	}
}

function Counter () {
	const [value, setValue] = useState(1);
	const [name, setName] = useState(null);

	const incrementHandler = () => {
		setValue(value + 1)
	}

	setTimeout(() => {
		setName('Scobby');
	}, 2000);

	return (
		<React.Fragment>
			<h2>New counter: { value }</h2>
			<p>Hi, my name is { name ? name : '...loading' }</p>
			<button 
				onClick={incrementHandler}
			>Incrementar</button>
		</React.Fragment>
	)
}

export default Counter