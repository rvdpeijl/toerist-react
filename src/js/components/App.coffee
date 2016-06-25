React      = require "react"
{ render } = require "react-dom"

Navigation = require "components/Navigation"

App = React.createClass
	render: ->
		<div>
			<Navigation/>
			<div className="content">
				{@props.children}
			</div>
		</div>

module.exports = App