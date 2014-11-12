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
#scrLipid = redbitsLayers.botaoLipidico
scrHemogram = redbitsLayers.botaoGlicemia
scrMenu  = redbitsLayers.openMenu
naoEncontrei = redbitsLayers.naoEncontrei
explicLab = redbitsLayers.explicLab
loginUm = redbitsLayers.loginUm
zeroExames = redbitsLayers.zeroExames
botaoLoginLab = redbitsLayers.botaoLoginLab
pularTitle = redbitsLayers.pularTitle
loginFrisch = redbitsLayers.loginFrisch
escolherExames = redbitsLayers.escolherExames
selected = redbitsLayers.selected


# scrLipidResult = new Layer
#   image: "images/resultadoLipidico.png",
#   width: 640, height: 1702, x: 0, y: 0





# Initialization Values
butSync.scale = 0
scrMenu.x = -scrMenu.width
#scrLipid.x = WIDTH
scrHemogram.x = WIDTH
scrWelcomeA.y = 0
scrWelcomeB.y = HEIGHT
scrWelcomeC.y = HEIGHT
scrWelcomeD.y = HEIGHT
zeroExames.x = WIDTH
escolherExames.x = WIDTH
explicLab.x = 0
explicLab.opacity = 0
zeroExames.opacity = 1
zeroExames.x = WIDTH
loginUm.x = WIDTH
loginFrisch.x = WIDTH
scrHemogram.draggable.enabled = true
scrHemogram.draggable.speedX = 0
#scrLipidResult.sendToBack()
#scrHemogramResult.sendToBack()
scrPhoneMenuBlack.visible = false
#scrLipidResult.visible = false
redbitsLayers.glicemiaResultado.visible = false
redbitsLayers.glicemiaResultado.visible = false
redbitsLayers.perfilLipidicoResultado.visible = false
redbitsLayers.hemogramaResultado.visible = false
explicLab.visible = true
zeroExames.visible = true
loginUm.visible = true
loginFrisch.visible = true
escolherExames.visible = true
selected.visible = false




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

Layer::opacidadeMostrar = ->
	return this.animate
	  properties:
	    opacity: 1
	  time: 0.2
	  curve: 'ease-in-out'
	  
Layer::opacidadeEsconder = ->
	return this.animate
	  properties:
	    opacity: 0
	  time: 0.2
	  curve: 'ease-in-out'



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
      loginUm.fadeInX()
      #scrStartExams.fadeInX()
      scrStartExams.visible = false
      scrPhoneMenu.fadeInY()
      anim = explicLab.opacidadeEsconder()
      anim.on Events.AnimationEnd, ->
        explicLab.sendToBack()
    when 7
      explicLab.bringToFront()
      explicLab.opacidadeMostrar()
    when 8
    	
    	anim2 = loginUm.fadeOutX()
    	anim2.on Events.AnimationEnd, ->
    		loginUm.sendToBack()
    	zeroExames.bringToFront()
    	scrPhoneMenu.bringToFront()
    	zeroExames.fadeInX()
    when 9
    	loginUm.fadeOutX()
    	loginFrisch.bringToFront()
    	loginFrisch.fadeInX()
    	scrPhoneMenu.bringToFront()
    	pularTitle.visible = false
    	loginUm.visible = false
    when 10
    	loginFrisch.fadeOutX()
    	escolherExames.bringToFront()
    	scrPhoneMenu.bringToFront()
    	escolherExames.visible = true
    	escolherExames.fadeInX()
    	selected.visible = true
    	selected.bringToFront()
    when 11
    	escolherExames.opacidadeEsconder()
    	selected.visible = false
    	scrStartExams.visible = true
    	scrStartExams.fadeInX()
    


# Click events

scrWelcomeA.on Events.Click, -> changeScene(3)
scrWelcomeB.on Events.Click, -> changeScene(4)
scrWelcomeC.on Events.Click, -> changeScene(5)
butSync.on Events.Click, -> changeScene(6)
naoEncontrei.on Events.Click, -> changeScene(7)
explicLab.on Events.Click, -> changeScene(6)
pularTitle.on Events.Click, -> changeScene(8)
botaoLoginLab.on Events.Click, -> changeScene(9)
loginFrisch.on Events.Click, -> changeScene(10)
selected.on Events.Click, -> changeScene(11)
#zeroExames.on Events.Click, -> changeScene(6)
scrStartExams.on Events.Click, -> changeScene(12)
# scrLipid.on Events.Click, -> changeScene(13)

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

# scrHemogramResult.on Events.Click, ->
#     scrPhoneMenu.visible = true
#     scrPhoneMenuBlack.visible = false
#     scrHemogram.fadeInY()
    


# card2.on Events.Click, ->
# 	viraCarta(card2,card2Back)