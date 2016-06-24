React = require "react"
{ render } = require "react-dom"
{ createHistory } = require "history"

{ Router, Route, Link, hashHistory, IndexRoute, browserHistory } = require "react-router"

App = require "components/App"
Test = require "components/Test"

Home = React.createClass
	render: -> <div>HOME!!!</div>

render (
	<Router history={browserHistory}>
		<Route path="/" component={App}>
			<IndexRoute component={Home}/>
			# <Route path="test" component={Test}/>
			<Route component={Test}>
				<Route path="test" component={Test}/>
			</Route>
		</Route>
	</Router>
), document.getElementById "root"