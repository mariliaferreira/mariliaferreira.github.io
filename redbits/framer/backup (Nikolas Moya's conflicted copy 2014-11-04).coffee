# This imports all the layers for "redbits" into redbitsLayers
redbitsLayers = Framer.Importer.load "imported/redbits"

Framer.Defaults.Animation = 
  time: 0.2
  curve: 'spring'
  curveOptions:
    tension: 500
    friction: 35
    velocity: 10

# Set up views to access them later
splash = redbitsLayers.splashScreen
bvindoA = redbitsLayers.bemvindoA
bvindoB = redbitsLayers.bemvindoB
bvindoC = redbitsLayers.bemvindoC
bvindoD = redbitsLayers.bemvindoD
phonemenu = redbitsLayers.navigation
exams   = redbitsLayers.horizontalScroll
lipico = redbitsLayers.perfilLipicoResultado
glicemia = redbitsLayers.glicemiaResultado
hemograma = redbitsLayers.hemogramaResultado
openMenu  = redbitsLayers.openMenu

butSync = redbitsLayers.botaoSincronizar
butMenu = redbitsLayers.botaoMenu
butGlicemia = redbitsLayers.botaoGlicemia
butLipidico = redbitsLayers.botaoLipidico
butHemograma = redbitsLayers.botaoHemograma

# Initialization Values
exams.draggable.enabled = true
exams.draggable.speedY = 0
# Convo.originalFrame = Convo.frame
# CardAttach.style =
#   borderRadius: '18px'
#   overflow: 'hidden'
# CardAttach.scale = 280/320
# Card.y = 180 - 45
# Convo.y = 1136
# ConvoPopover.opacity = 0
# HeartCta.opacity = 0
# CardText.opacity = 0
# TapPopover.opacity = 0
# SignupCta.opacity = 0
# PageControl.opacity = 0
# Artboard.width = 640
# Artboard.height = 1136
# Artboard.clip = true
# RefreshButton.opacity = 0


# Useful methods
Layer::fadeIn = ->
  this.animate
    properties: 
      opacity: 1
    curve: 'ease-in-out'
    time: 0.1
  this.visible=true

Layer::fadeOut = ->
  this.animate
    properties: 
      opacity: 0
    curve: 'ease-in-out'
    time: 0.1
  this.visible = false

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
      animationA = butSync.animate 
        properties:
          scale: 1
        curve: 'spring'
        curveOptions:
          friction: 20
      animationB = animationA.reverse()
      animationA.on(Events.AnimationEnd, animationB.start)
      animationB.on(Events.AnimationEnd, animationA.start)
    when 6 
      bvindoD.fadeOut()
      phonemenu.fadeIn()
    when 7
      exams.fadeOut()
      glicemia.fadeIn()
#       CardAttach.style.borderRadius = '18px'
#       ConvoPopover.fadeOut()
#       PageControl.fadeOut()
#       CardAttach.animate properties: scale: 280/320
#       Card.animate properties: y: 180-45
#       Convo.animate properties: y: 1136
#       Utils.delay 0.6, ->
#         HeartCta.fadeIn()

splash.on Events.Click, -> changeScene(2)
bvindoA.on Events.Click, -> changeScene(3)
bvindoB.on Events.Click, -> changeScene(4)
bvindoC.on Events.Click, -> changeScene(5)
butSync.on Events.Click, -> changeScene(6)