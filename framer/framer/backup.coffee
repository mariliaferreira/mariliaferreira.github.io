# Welcome to Framer

# Learn how to prototype: http://framerjs.com/learn
# Drop an image on the device, or import a design from Sketch or Photoshop

layerLista = new Layer
	image:"images/5.png"
	width: 640, height: 1136
	
IntroSlide = new Layer
	image:"images/3.png"
	width: 640, height: 1136


# Intro slide only draggable horizontally
IntroSlide.draggable.enabled = true
IntroSlide.draggable.speedY = 0

IntroSlide.on Events.DragEnd, ->

	if IntroSlide.x < -80 
		# Dragged enough, move to the next slide after a delay
		IntroSlide.animate
			properties:
				x: -640
			time: 0.2
			curve: 'ease-out'

		Utils.delay 0.6, ->
			changeScene(1)

	else
		# Not dragged enough, move it back
		IntroSlide.animate
			properties:
				x: 0
			time: 0.2
			curve: 'ease-out'

changeScene = (scene) ->			
	switch scene
		when 1 
			# Fade in instructional text
			lauerLista.fadeIn()
			CardText.fadeIn()
		when 2 
			CardAttach.animate properties: scale: 1 # zoom in the attachment
			CardAttach.animate properties: borderRadius: 0 # un-round the borders
			Card.animate properties: y: 0
			Convo.animate properties: y: Convo.originalFrame.y
			TapPopover.fadeOut()
			CardText.fadeOut()
			PageControl.fadeIn()
			Utils.delay 0.6, ->
				ConvoPopover.fadeIn()
		when 3 
			CardAttach.style.borderRadius = '18px'
			ConvoPopover.fadeOut()
			PageControl.fadeOut()
			CardAttach.animate properties: scale: 280/320
			Card.animate properties: y: 180-45
			Convo.animate properties: y: 1136
			Utils.delay 0.6, ->
				HeartCta.fadeIn()
		when 4 
			HeartCta.fadeOut()
			Card.animate properties: x: 640
			SignupCta.fadeIn()
			Utils.delay 0.6, ->
				RefreshButton.animate properties: scale: 1.8, opacity: 1



Card.on Events.Click, -> changeScene(2)
ConvoClose.on Events.Click, -> changeScene(3)
HeartCtaHeart.on Events.Click, -> changeScene(4)
RefreshButton.on Events.Click, -> location.reload()
