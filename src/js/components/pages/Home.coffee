React = require "react"

ImageGallery = require "components/ImageGallery"

Home = React.createClass
	render: -> 
		<div className="home">
			<div className="landing">
				<div className="overlay">
					<div className="logo"><h1>Logo</h1></div>
				</div>
			</div>

			<div className="container">
				<div className="row">

					<div className="col-md-4">
						<div className="row">
							<div className="col-md-12">
								<div className="contact-tile">
									<div className="overlay">
										<span className="cta">Bel of mail om te reserveren</span>
										<span className="phone">023 1234567</span>
										<span className="email">info@cafedetoerist.nl</span>
									</div>
								</div>
							</div>
						</div>

						<div className="row">
							<div className="col-md-12">
								Een rij?
							</div>
						</div>
					</div>

					<div className="col-md-8">
						<ImageGallery/>
					</div>

				</div>
			</div>
		</div>

module.exports = Home