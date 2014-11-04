# This imports all the layers for "redbits" into redbitsLayers
redbitsLayers = Framer.Importer.load "imported/redbits"

# for layer of redbitsLayers
#   redbitsLayers[layer].visible = false

# Set up views to access them later
screen_height = 1136
screen_width = 640
splash = redbitsLayers.splashScreen
bvindoA = redbitsLayers.bemvindoA
bvindoB = redbitsLayers.bemvindoB
bvindoC = redbitsLayers.bemvindoC
bvindoD = redbitsLayers.bemvindoD
phonemenu = redbitsLayers.navigation
phonemenuBlack = redbitsLayers.navigationBlack
startExams   = redbitsLayers.startExames
lipidico = redbitsLayers.botaoLipidico
hemograma = redbitsLayers.botaoGlicemia
menu  = redbitsLayers.openMenu

lipidicoResultado = new Layer
  image: "images/resultadoLipidico.png",
  width: 640, height: 1702, x: 0, y: 0
hemogramaResultado = new Layer
  image: "images/resultadoHemograma.png",
  width: 640, height: 3238, x: 0, y: 0

lipidicoResultado.sendToBack()
lipidicoResultado.visible = false
hemogramaResultado.sendToBack()

butSync = redbitsLayers.botaoSincronizar
butMenu = redbitsLayers.botaoMenu

# Initialization Values
butSync.scale = 0
lipidico.x = 640
hemograma.x = 640
bvindoA.y = 0
bvindoB.y = screen_height
bvindoC.y = screen_height
bvindoD.y = screen_height

hemograma.draggable.enabled = true
hemograma.draggable.speedX = 0

lipidico.draggable.enabled = true
lipidico.draggable.speedX = 0

phonemenuBlack.visible = false

menu.x = -menu.width
redbitsLayers.glicemiaResultado.visible = false
redbitsLayers.glicemiaResultado.visible = false
redbitsLayers.perfilLipidicoResultado.visible = false
redbitsLayers.hemogramaResultado.visible = false


Utils.delay 1, ->
  splash.animate
    properties: {opacity: 0}
    time: 0.2	

# Useful methods
Layer::fadeIn = ->
  this.animate
    properties: 
      y: 0
    curve: 'ease-in-out'
    time: 0.2
  this.visible=true

Layer::fadeOut = ->
  this.animate
    properties: 
      y: -this.height
    curve: 'ease-in-out'
    time: 0.4

changeScene = (scene) ->
  switch scene
    when 1 
      # Fade in instructional text
      splash.fadeIn()
    when 2 
      splash.fadeOut()
      bvindoA.fadeIn()
    when 3 
      bvindoA.fadeOut()
      bvindoB.fadeIn()
    when 4 
      bvindoB.fadeOut()
      bvindoC.fadeIn()
    when 5 
      bvindoC.fadeOut()
      bvindoD.fadeIn()
      Utils.delay 0.3, ->
        butSync.animate 
          properties:
            scale: 1
          curve: 'spring'
          curveOptions:
            friction: 20
    when 6 
      bvindoD.fadeOut()
      startExams.fadeIn()
      phonemenu.fadeIn()
    when 7
      startExams.animate
        properties:
          x: -startExams.width
        time: 0.2,
        curve: "ease-in-out"
      lipidico.animate
        properties:
          x: 0
        time: 0.2,
        curve: "ease-in-out"
     when 8
      lipidico.animate
        properties:
          x: -lipidico.width
        time: 0.2,
        curve: "ease-in-out"
      hemograma.animate
        properties:
          x: 0
        time: 0.2,
        curve: "ease-in-out"
     when 9 
        lipidico.animate
          properties:
            x: -lipidico.width
          time: 0.2,
          curve: "ease-in-out"
        hemograma.animate
          properties:
            x: 0
          time: 0.2,
          curve: "ease-in-out"

bvindoA.on Events.Click, -> changeScene(3)
bvindoB.on Events.Click, -> changeScene(4)
bvindoC.on Events.Click, -> changeScene(5)
butSync.on Events.Click, -> changeScene(6)
startExams.on Events.Click, -> changeScene(7)
lipidico.on Events.Click, -> changeScene(8)
butMenu.on Events.Click, ->
    menu.bringToFront()
    if menu.x is -menu.width
      menu.animate
        properties:
          x: 0
        time: 0.1,
        curve: "ease-in-out"
    else
      menu.animate
        properties:
          x: -menu.width
        time: 0.1
        curve: "ease-in-out"

menu.on Events.Click, ->
    menu.animate
      properties:
        x: -menu.width
      time: 0.1
      curve: "ease-in-out"

hemograma.on Events.DragEnd, ->
  if hemograma.y < -50 
    # Dragged enough, move to the next slide after a delay
    hemograma.animate
      properties:
        y: -hemograma.height
      time: 0.2
      curve: 'ease-out'
      phonemenu.visible = false
      phonemenuBlack.visible = true

  else
    # Not dragged enough, move it back
    hemograma.animate
      properties:
        y: 0
      time: 0.2
      curve: 'ease-out'