React      = require "react"
{ render } = require "react-dom"

Navigation = require "components/Navigation"

App = React.createClass
	render: ->
		<div>
			<Navigation/>
			<div className="container content">
				{@props.children}
				<div className="btn btn-primary">Doe iets</div>
			</div>
		</div>

module.exports = App