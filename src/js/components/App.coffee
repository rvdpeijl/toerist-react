React      = require "react"
{ render } = require "react-dom"

Navigation = require "components/Navigation"

App = React.createClass
	render: ->
		<div>
			<Navigation/>
			<h1>App</h1>
			{@props.children}
		</div>

module.exports = App