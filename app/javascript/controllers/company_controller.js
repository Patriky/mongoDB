

import { Controller } from 'stimulus'

export default class extends Controller {
	static targets = ['name', 'city']

	connect() {
		console.log("Working...")
		this.nameTarget.focus()
	}

	toUpper(){
		this.nameTarget.value = this.nameTarget.value.trim()
		this.nameTarget.value = this.nameTarget.value.toUpperCase()
	}

	select(){
		//this.cityTarget.select()
		console.log("Selected!")
	}

}