# This imports all the layers for "pedalandoprototipo2" into pedalandoprototipo2Layers3
pedalandoprototipo2Layers3 = Framer.Importer.load "imported/pedalandoprototipo2"

#escala as interfaces
Framer.Device.contentScale = 1.7



# Useful methods
Layer::fadeInX = ->
  return this.animate
    properties:
      x: 0
    time: 0.2,
    curve: "ease-in-out"
  this.visible=true

Layer::fadeInXLeft = ->
  return this.animate
    properties:
      x: 0
    time: 0.2,
    curve: "ease-in-out"
  this.visible=true

Layer::fadeInXRight = ->
  return this.animate
    properties:
      x: 100
    time: 0.2,
    curve: "ease-in-out"
  this.visible=true

Layer::fadeOutX = ->
  return this.animate
    properties: 
      x: -this.width
    curve: 'ease-in-out'
    time: 0.2
    
Layer::fadeOutXRight = ->
  return this.animate
    properties: 
      x: 640
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
	  

Layer::topoMenuDeslocamento = ->
	return this.animate
		properties:
			x: 190
		time: 0.2
		curve: 'ease-in-out'
		
Layer::topoMenuDescolacamentoBack = ->
	return this.animate
		properties:
			x: 0
		time: 0.2
		curve: 'ease-in-out'
		
Layer::menuScreenDeslocamentoIn = ->
	return this.animate
		properties:
			x: 200
		time: 0.2
		curve: 'ease-in-out'

Layer::menuScreenDeslocamentoOut = ->
	return this.animate
		properties:
			x: 0
		time: 0.2
		curve: 'ease-in-out'


loading = new Layer
	image: "images/load.png"
	width: 640
	height: 1136
	x: 0
	y: 0

pessoalCards = new Layer
	image: "images/pessoal.png"
	width: 640
	height: 2017
	x: 0
	y: 0
	opacity: 1
	index: 5

layerClickMenu = new Layer
	width: 300
	height: 300
	x: 200
	y: 50
	opacity: 0

grandeLayer = new Layer
	width: 640
	height: 1136
	y: 170
	x: 0
	 
botaoAndroid = pedalandoprototipo2Layers3.botoesandroid
#navigation = pedalandoprototipo2Layers3.cima
menuLateral = pedalandoprototipo2Layers3.menulateral
tela1 = pedalandoprototipo2Layers3.tela1
telabuscas = pedalandoprototipo2Layers3.telabuscas
telaresultadobusca = pedalandoprototipo2Layers3.telaresultadobusca
telaextras = pedalandoprototipo2Layers3.telaextras
extras = pedalandoprototipo2Layers3.extrasDois
criarAlerta = pedalandoprototipo2Layers3.criarAlerta
meuresumo = pedalandoprototipo2Layers3.meuresumo
economizouSemana = pedalandoprototipo2Layers3.economizouSemana
pessoalTela = pedalandoprototipo2Layers3.pessoalTela
mapaMapaFundo = pedalandoprototipo2Layers3.mapaMapaFundo
menuBotao = pedalandoprototipo2Layers3.menuBotao
topoMenu = pedalandoprototipo2Layers3.topoMenu
topoAndroid = pedalandoprototipo2Layers3.topoAndroid
pessoalMenuIcone = pedalandoprototipo2Layers3.pessoalMenuIcone
mapaMenuIcone = pedalandoprototipo2Layers3.mapaMenuIcone
extrasMenuIcone = pedalandoprototipo2Layers3.extrasMenuIcone
configurarMenuIcone = pedalandoprototipo2Layers3.configurarMenuIcone
botoesResumoCriar = pedalandoprototipo2Layers3.botoesResumoCriar
botaoCriarAlerta = pedalandoprototipo2Layers3.botaoCriarAlerta
topoCriarAlerta = pedalandoprototipo2Layers3.topoCriarAlerta
mapaMapa = pedalandoprototipo2Layers3.mapaMapa
filtrarExtras = pedalandoprototipo2Layers3.filtrarExtras
filtrarExtrasBotao = pedalandoprototipo2Layers3.filtrarExtrasBotao



grandeLayer.addSubLayer(pessoalCards)
grandeLayer.addSubLayer(botoesResumoCriar)
grandeLayer.addSubLayer(telaextras)
grandeLayer.addSubLayer(criarAlerta)
grandeLayer.addSubLayer(mapaMapa)
grandeLayer.addSubLayer(filtrarExtras)
grandeLayer.addSubLayer(filtrarExtrasBotao)


grandeLayer.backgroundColor = "white"

#inicializacao
menuLateral.visible = false
telabuscas.visible = false
telaresultadobusca.visible = false
telaextras.visible = false
extras.visible = false
criarAlerta.visible = false
meuresumo.visible = false
economizouSemana.visible = false
pessoalTela.visible = false
mapaMapaFundo.visible = true
HEIGHT = 1136
WIDTH = 640
menuLateral.x = -640
pessoalCards.visible = false
grandeLayer.opacity = 0
tela1.visible = false
mapaMapavisible = false
mapaMapa.y = -20
filtrarExtrasBotao.y = 890
filtrarExtras.opacity = 0
filtrarExtras.visible = false
filtrarExtrasBotao.visible = false
filtrarExtras.y = 495

botoesResumoCriar.y = -1
pessoalCards.y = 120
topoCriarAlerta.visible = false
criarAlerta.y = -70


# After 1 second, the splash screen will go from opacity 1 to 0.
Utils.delay 0.5, ->
  loading.animate
    properties: {opacity: 0}
    time: 0.2	



changeScene = (scene) ->
	switch scene
		when 2
			botaoAndroid.bringToFront()
			menuLateral.visible = true
			menuLateral.bringToFront()
			menuLateral.fadeInX()
			topoMenu.topoMenuDeslocamento()
			layerClickMenu.visible = true
			grandeLayer.menuScreenDeslocamentoIn()
		when 3
			botaoAndroid.bringToFront()
			topoMenu.topoMenuDescolacamentoBack()
			menuLateral.fadeOutX()
			layerClickMenu.visible = false
			grandeLayer.menuScreenDeslocamentoOut()
			
		when 4 #pessoal 
			pessoalCards.opacidadeMostrar()
			botaoAndroid.bringToFront()
			menuLateral.bringToFront()
			pessoalCards.visible = true
			topoMenu.topoMenuDescolacamentoBack()
			menuLateral.fadeOutX()
			layerClickMenu.visible = false
			mapaMapa.visible = false
			
			grandeLayer.opacity = 1
			grandeLayer.menuScreenDeslocamentoOut()
			telaextras.visible = false
			botoesResumoCriar.opacidadeMostrar()
			
		when 5
			pessoalCards.opacidadeEsconder()
			mapaMapa.visible = true
			mapaMapa.opacity = 1
			mapaMapa.bringToFront()
			menuLateral.fadeOutX()
			topoMenu.topoMenuDescolacamentoBack()
			layerClickMenu.visible = false
			grandeLayer.menuScreenDeslocamentoOut()
			botoesResumoCriar.opacidadeEsconder()
		
		when 6 #tela extras
			pessoalCards.visible = false
			telaextras.visible = true
			criarAlerta.visible = false
			menuLateral.fadeOutX()
			topoMenu.topoMenuDescolacamentoBack()
			grandeLayer.menuScreenDeslocamentoOut()
			#mapaMapaFundo.opacidadeEsconder()
			botoesResumoCriar.opacidadeEsconder()
			mapaMapa.visible = false
			filtrarExtras.visible = false
			filtrarExtrasBotao.visible = true
		
			
		when 7 #criarAlerta
			pessoalCards.visible = false
			telaextras.visible = false
			criarAlerta.visible = true
			menuLateral.fadeOutX()
			topoMenu.topoMenuDescolacamentoBack()
			grandeLayer.menuScreenDeslocamentoOut()
			botoesResumoCriar.visible = false
			topoCriarAlerta.visible = true
			topoMenu.visible = false
		
		when 8
			topoCriarAlerta.visible = false
			criarAlerta.fadeOutY()
			criarAlerta.visible = false
			pessoalCards.visible = true
			topoMenu.visible = true
			topoCriarAlerta.visible = false
			botoesResumoCriar.visible = true
		when 9
			filtrarExtrasBotao.opacidadeEsconder()
			filtrarExtras.opacidadeMostrar()
			filtrarExtras.visible = true
		when 10
			filtrarExtras. opacidadeEsconder()
			filtrarExtrasBotao.visible = true
			filtrarExtrasBotao.opacidadeMostrar()
			

			
pessoalCards.draggable.enabled = true
pessoalCards.draggable.speedX = 0

pessoalCards.on Events.DragEnd, ->
	if pessoalCards.y > 0
		    pessoalCards.animate
		        properties:
		            x: 0, y: 120
		        curve: "spring(600, 30, 0)"
	if pessoalCards.y < -1500
		pessoalCards.animate
			properties:
				x: 0, y: 120
			curve: "spring(600, 30, 0)"

menuBotao.on Events.Click, ->
	changeScene(2)

layerClickMenu.on Events.Click, ->
	changeScene(3)
	
pessoalMenuIcone.on Events.Click, ->
	changeScene(4)

mapaMenuIcone.on Events.Click, ->
	changeScene(5)

extrasMenuIcone.on Events.Click, ->
	changeScene(6)

botaoCriarAlerta.on Events.Click, ->
	changeScene(7)
	
pessoalCards.on Events.Click, ->
	changeScene(3)
	
topoCriarAlerta.on Events.Click, ->
	changeScene(8)
	
filtrarExtrasBotao.on Events.Click, ->
	changeScene(9)
	
filtrarExtras.on Events.Click, ->
	changeScene(10)

