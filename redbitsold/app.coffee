# This imports all the layers for "redbits" into redbitsLayers
redbitsLayers = Framer.Importer.load "imported/redbits"

# Variables declaration
HEIGHT = 1136
WIDTH = 640
last_animation = false
butSync = redbitsLayers.botaoSincronizar
butMenu = redbitsLayers.botaoMenu
scrSplash = redbitsLayers.splashScreen
scrWelcomeA = redbitsLayers.bemvindoA
scrWelcomeB = redbitsLayers.bemvindoB
scrWelcomeC = redbitsLayers.bemvindoC
scrWelcomeD = redbitsLayers.bemvindoD
scrPhoneMenu = redbitsLayers.navigation
scrPhoneMenuBlack = redbitsLayers.navigationBlack
scrStartExams   = redbitsLayers.startExames
scrLipid = redbitsLayers.botaoLipidico
scrHemogram = redbitsLayers.botaoGlicemia
scrMenu  = redbitsLayers.openMenu

scrLipidResult = new Layer
  image: "images/resultadoLipidico.png",
  width: 640, height: 1702, x: 0, y: 0
scrHemogramResult = new Layer
  image: "images/resultadoHemograma.png",
  width: 640, height: 3238, x: 0, y: 0

# Initialization Values
butSync.scale = 0
scrMenu.x = -scrMenu.width
scrLipid.x = 640
scrHemogram.x = 640
scrWelcomeA.y = 0
scrWelcomeB.y = HEIGHT
scrWelcomeC.y = HEIGHT
scrWelcomeD.y = HEIGHT
scrHemogram.draggable.enabled = true
scrHemogram.draggable.speedX = 0
scrLipid.draggable.enabled = true
scrLipid.draggable.speedX = 0
scrLipidResult.sendToBack()
scrHemogramResult.sendToBack()
scrPhoneMenuBlack.visible = false
scrLipidResult.visible = false
redbitsLayers.glicemiaResultado.visible = false
redbitsLayers.glicemiaResultado.visible = false
redbitsLayers.perfilLipidicoResultado.visible = false
redbitsLayers.hemogramaResultado.visible = false


# After 1 second, the splash screen will go from opacity 1 to 0.
Utils.delay 1, ->
  scrSplash.animate
    properties: {opacity: 0}
    time: 0.2	

# Useful methods
Layer::fadeInX = ->
  return this.animate
    properties:
      x: 0
    time: 0.2,
    curve: "ease-in-out"
  this.visible=true

Layer::fadeOutX = ->
  return this.animate
    properties: 
      x: -this.width
    curve: 'ease-in-out'
    time: 0.2

Layer::fadeInY = ->
  return this.animate
    properties: 
      y: 0
    curve: 'ease-in-out'
    time: 0.2
  this.visible=true

Layer::fadeOutY = ->
  return this.animate
    properties: 
      y: -this.height
    curve: 'ease-in-out'
    time: 0.2

changeScene = (scene) ->
  switch scene
    when 3 
      scrWelcomeA.fadeOutY()
      scrWelcomeB.fadeInY()
    when 4 
      scrWelcomeB.fadeOutY()
      scrWelcomeC.fadeInY()
    when 5 
      scrWelcomeC.fadeOutY()
      scrWelcomeD.fadeInY()
      Utils.delay 0.3, ->
        butSync.animate 
          properties:
            scale: 1
          curve: 'spring'
          curveOptions:
            friction: 20
    when 6 
      scrWelcomeD.fadeOutY()
      scrStartExams.fadeInX()
      scrPhoneMenu.fadeInY()
    when 7
      scrStartExams.fadeOutX()
      scrLipid.fadeInX()
     when 8
      scrLipid.fadeOutX()
      scrHemogram.fadeInX()


# Click events
scrWelcomeA.on Events.Click, -> changeScene(3)
scrWelcomeB.on Events.Click, -> changeScene(4)
scrWelcomeC.on Events.Click, -> changeScene(5)
butSync.on Events.Click, -> changeScene(6)
scrStartExams.on Events.Click, -> changeScene(7)
scrLipid.on Events.Click, -> changeScene(8)
butMenu.on Events.Click, ->
    scrMenu.bringToFront()
    if scrMenu.x is -scrMenu.width
      scrMenu.fadeInX()
    else
      scrMenu.fadeOutX()

scrMenu.on Events.Click, ->
	scrMenu.fadeOutX()

scrHemogram.on Events.DragEnd, ->
  if scrHemogram.y < -50 
    # Dragged enough, move to the next slide after a delay
    last_animation = scrHemogram.fadeOutY()
    scrPhoneMenu.visible = false
    scrPhoneMenuBlack.visible = true
  else
    # Not dragged enough, move it back
    scrHemogram.fadeInY()

scrHemogramResult.on Events.Click, ->
    scrPhoneMenu.visible = true
    scrPhoneMenuBlack.visible = false
    scrHemogram.fadeInY()