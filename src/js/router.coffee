React = require "react"
{ render } = require "react-dom"
{ createHistory } = require "history"

{ Router, Route, Link, hashHistory, IndexRoute, browserHistory } = require "react-router"

App = require "components/App"
Home = require "components/pages/Home"

render (
	<Router history={browserHistory}>
		<Route path="/" component={App}>
			<IndexRoute component={Home}/>
		</Route>
	</Router>
), document.getElementById "root"