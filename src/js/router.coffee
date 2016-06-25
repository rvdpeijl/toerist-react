React = require "react"
{ render } = require "react-dom"
{ createHistory } = require "history"

{ Router, Route, Link, hashHistory, IndexRoute, browserHistory } = require "react-router"

App = require "components/App"
Home = require "components/pages/Home"
Menu = require "components/pages/Menu"

render (
	<Router history={browserHistory}>
		<Route path="/" component={App}>
			<IndexRoute component={Home}/>
			<Route path="menu" component={Menu}/>
		</Route>
	</Router>
), document.getElementById "root"