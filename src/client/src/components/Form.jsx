import React from 'react';

const Form = () => {

	const submitHandler = e => {
		e.preventDefault();
		console.log('Estás enviando el formulario');

		let theForm = e.currentTarget;
		// let formInputs = Array.from(theForm.elements);
		let formInputs = [...theForm.elements];
		formInputs.pop();

		let values = {};

		formInputs.forEach(oneInput => {
			values[oneInput.name] = oneInput.value;
		});

		fetch('/api', {
			headers: {
				'Content-Type': 'application/json'
			},
			method: 'POST',
			body: JSON.stringify(values)
		})
			.then(response => response.json())
			.then(data => {
				if (data.status === 200) {
					console.log('Se guardó la pelí');
					console.log(data.message);
					formInputs.forEach(oneInput => oneInput.value = '');
					theForm.insertAdjacentHTML('afterend', '<h3>Se guardó la película</h3>');
				}
			})
			.catch(error => console.log(error))
	}

	return (
		<React.Fragment>
			<h2>Crear una película</h2>
			<form method="POST" onSubmit={submitHandler}>
				<div>
					<label>Title</label> <br/>
					<input type="text" name="title"/>
				</div>
				<div>
					<label>Overview</label> <br/>
					<textarea name="overview" cols="30" rows="10"></textarea>
				</div>
				<div>
					<label>Release date</label> <br/>
					<input type="date" name="releaseDate"/>
				</div>
				<div>
					<label>Poster</label> <br/>
					<input type="text" name="poster"/>
				</div>
				<br/>
				<button type="submit">Enviar</button>
			</form>
		</React.Fragment>
	)
}

export default Form;