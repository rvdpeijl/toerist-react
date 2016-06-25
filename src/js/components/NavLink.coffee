React = require "react"

{ Link } = require "react-router"

NavLink = React.createClass 
	contextTypes: 
		router: React.PropTypes.object

	render: ->
		isActive  = @context.router.isActive @props.to, true
		className = if isActive then "active" else ""

		<li className={className}>
			<Link {...@props}>
				{@props.children}
			</Link>
		</li>

module.exports = NavLink