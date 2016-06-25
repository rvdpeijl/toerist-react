React = require "react"
Slider = require "react-slick"

SimpleSlider = React.createClass
	render: ->
		settings = 
			dots:           true
			infinite:       true
			speed:          500
			slidesToShow:   1
			slidesToScroll: 1
			autoplay:       true
			autoplaySpeed:  7000
			lazyLoad:       true
			className:      "image-gallery"
			variableHeight: true

		<Slider {...settings}>
			<div className="item">
				<img src="/img/impressie/_DSC0114b.jpg"/>
			</div>
			<div className="item">
				<img src="/img/impressie/_DSC0132b.jpg"/>
			</div>
			<div className="item">
				<img src="/img/impressie/DSC_2571b.jpg"/>
			</div>
		</Slider>

module.exports = SimpleSlider