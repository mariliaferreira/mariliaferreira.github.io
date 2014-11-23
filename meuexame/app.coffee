# This imports all the layers for "redbits2" into redbits2Layers
redbits2Layers = Framer.Importer.load "imported/redbits2"

animFront = false
animBack = false
animScale = false
initialPosition = 0


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
  
Layer::fadeInXExame = ->
  return this.animate
    properties:
      x: 160
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


Layer::rotateFront = ->
  return this.animate
    properties:
     rotationY:180
     delay: 5
     opacity: 0
    time: 0.4,
    #curve: "spring(400,50,0)"
    curve: "cubic-bezier(0.7, 0.73, 0.17, 1.01)"
 
 Framer.Defaults.Animation = {
    curve: "spring(800,30,0)"
}
 
Layer::rotateBack = ->
 	return this.animate
 	  properties:
 	    rotationY:0
 	    opacity: 1
 	  time: 0.4,
 	  #curve: "spring(400,50,0)"
 	  curve: "cubic-bezier(0.7, 0.73, 0.17, 1.01)"

 Layer::Scale = ->
 	return this.animate
 	  properties:
 	   	scale: 1.2
 	   	y: 80
 	  time: 0.3,
	  #curve: "spring(800,30,0)"
	  #curve: "cubic-bezier(0.7, 0.73, 0.17, 1.01)"


#vira e desvira Card
viraCarta = (cartaFrente, cartaFundo) ->
	cartaFrente.bringToFront()
	cartaFundo.bringToFront()
	animFront = cartaFrente.rotateFront()
	animBack = cartaFundo.rotateBack()
	Utils.delay 0.4, ->
		animScale = cartaFundo.Scale()

desviraCarta = (cartaFrente, cartaFundo) ->
	cartaFrente.bringToFront()
	cartaFundo.bringToFront()
	animScale = animScale.reverse() 
	animBack = animBack.reverse()
	last = animFront.reverse()
	animFront = animFront.reverse()
	animScale.start()
	Utils.delay 0.4, ->
		animBack.start()
		animFront.start()


# importar imagens resultados
resultadoLipidico = new Layer
	image: "images/resultadoLipidico.png",
	width: 640
	height: 1929
	x: -45
	y: -100
	scale: 0.85
	
resultadoGlicemia = new Layer
	image: "images/resultadoGlicemia.png",
	width: 640
	height: 1135
	x: -45
	y: -100
	scale: 0.85

resultadoHemograma = new Layer
	image: "images/resultadoHemograma.png",
	width: 640
	height: 3476
	x: -50
	y: -250
	scale: 0.85
	
botaoCompararExameSet = new Layer
	width: 200
	height: 100

botaoCompararExameNov = new Layer
	width: 200
	height: 100

botaoCompararExameMar = new Layer
	width: 200
	height: 100

# superlayers

#scrollhorizontal
superCardHorizontal = new Layer
	width: 2300
	height: 1100
	y: 0
	backgroundColor: "transparent"

superResultadoLipidico = new Layer
	width: 544
	height: 1300
	x: 50
	y: 220
	opacity: 0
	rotationY: 180

superResultadoGlicemia = new Layer
	width: 544
	height: 1135
	x: 50
	y: 220
	opacity: 0
	rotationY: 180
	
superResultadoHemograma = new Layer
	width: 544
	height: 1135
	x: 50
	y: 120
	opacity: 0
	rotationY: 180
	
superHiperCard = new Layer
	width: 900
	height: 1000
	x: 0
	y: 130
	opacity: 1




#imagens importadas
navigation = redbits2Layers.navigation
zeroExames = redbits2Layers.zeroExames
startExames = redbits2Layers.startExames
cardLipidico = redbits2Layers.cardLipidico
cardGlicemia = redbits2Layers.cardGlicemia
cardHemograma = redbits2Layers.cardHemograma
paginaUm = redbits2Layers.paginaUm
paginaDois = redbits2Layers.paginaDois
paginaTres = redbits2Layers.paginaTres
fechar = redbits2Layers.fechar
fechar2 = redbits2Layers.fechar2
fechar3 = redbits2Layers.fechar3
examesAntigosicone = redbits2Layers.examesAntigos
compararIcone = redbits2Layers.comparar
telaPerfilUsuario = redbits2Layers.telaPerfilUsuario
back = redbits2Layers.back
backComparar = redbits2Layers.backComparar
backExamesAntigos = redbits2Layers.backExamesAntigos
examesAntigosLista = redbits2Layers.examesAntigosLista
telaComparar = redbits2Layers.telaComparar
examesAntigosTitle = redbits2Layers.examesAntigosTitle
compararExamesTitle = redbits2Layers.compararExamesTitle
bigTitle = redbits2Layers.exameTitle
splashScreen = redbits2Layers.splashScreen
telaCompararDois = redbits2Layers.telaCompararDois
telaCompararTres = redbits2Layers.telaCompararTres
telaCompararQuatro = redbits2Layers.telaCompararQuatro


Utils.delay 1, ->
  splashScreen.animate
    properties: {opacity: 0}
    time: 0.5	


#inicialização
HEIGHT = 1136
WIDTH = 640
zeroExames.opacity = 0
startExames.x = WIDTH
startExames.y = -100
cardLipidico.x = 580
cardLipidico.y = 80
cardGlicemia.x = 1140
cardGlicemia.y = 80
cardHemograma.x = 1710
cardHemograma.y = 80
fechar.x = 480
fechar2.x = 480
fechar3.x = 480
superResultadoLipidico.shadowX = 3
superResultadoLipidico.shadowY = 3
superResultadoLipidico.shadowBlur = 4
superResultadoLipidico.shadowColor = "rgba(0,0,0,0.2)"
superResultadoLipidico.visible = false
superResultadoGlicemia.visible = false
telaPerfilUsuario.x = WIDTH
telaPerfilUsuario.y = 0
telaPerfilUsuario.opacity = 0
back.visible = false
backComparar.visible = false
backExamesAntigos.visible = false
examesAntigosLista.x = -640
examesAntigosLista.y = 0
examesAntigosLista.opacity = 0
telaComparar.x = WIDTH
telaComparar.y = -120
telaComparar.opacity = 0
examesAntigosTitle.opacity = 0
compararExamesTitle.opacity = 0
exameTitle = 1
splashScreen.opacity = 0
telaCompararDois.opacity = 0
telaCompararTres.opacity = 0
telaCompararQuatro.opacity = 0
telaCompararDois.x = 465
telaCompararDois.y = 310
telaCompararTres.x = 87
telaCompararTres.y = 192
telaCompararQuatro.x = 87
telaCompararQuatro.y = 192
botaoCompararExameSet.x = 300
botaoCompararExameSet.y = 850
botaoCompararExameSet.opacity = 0
botaoCompararExameSet.visible = false
botaoCompararExameNov.x = 500
botaoCompararExameNov.y = 850
botaoCompararExameNov.opacity = 0
botaoCompararExameNov.visible = false
botaoCompararExameMar.x = 100
botaoCompararExameMar.y = 850
botaoCompararExameMar.opacity = 0
botaoCompararExameMar.visible = false


superHiperCard.backgroundColor = "white"

superHiperCard.addSubLayer(superCardHorizontal)
superHiperCard.addSubLayer(telaPerfilUsuario)
superHiperCard.addSubLayer(telaComparar)
superHiperCard.addSubLayer(telaCompararDois)
superHiperCard.addSubLayer(telaCompararTres)
superHiperCard.addSubLayer(telaCompararQuatro)
superHiperCard.addSubLayer(examesAntigosLista)
superHiperCard.addSubLayer(botaoCompararExameSet)
superHiperCard.addSubLayer(botaoCompararExameNov)
superHiperCard.addSubLayer(botaoCompararExameMar)

# Configuracao do scroll horizontal
superCardHorizontal.draggable.enabled = true
superCardHorizontal.draggable.speedY = 0

superCardHorizontal.states.add("inicioCard", {x:0})
superCardHorizontal.states.add("segundoCard", {x:-530})
superCardHorizontal.states.add("terceiroCard", {x:-1084})
superCardHorizontal.states.add("quartoCard", {x:-1638})
superCardHorizontal.states.next(["inicioCard", "segundoCard", "terceiroCard", "quartoCard"])

superCardHorizontal.states.animationOptions = {
    curve: "spring(500, 30, 0)"
    time: 0.2
}

superCardHorizontal.addSubLayer(startExames)
superCardHorizontal.addSubLayer(cardLipidico)
superCardHorizontal.addSubLayer(cardGlicemia)
superCardHorizontal.addSubLayer(cardHemograma)


# Resultado Lipidico
resultadoLipidico.draggable.enabled = true
resultadoLipidico.draggable.speedX = 0
superResultadoLipidico.addSubLayer(fechar)
superResultadoLipidico.addSubLayer(resultadoLipidico)
superResultadoLipidico.backgroundColor = "white"
fechar.visible = false

#Resultado Glicemia
resultadoGlicemia.draggable.enabled = true
resultadoGlicemia.draggable.speedX = 0
superResultadoGlicemia.addSubLayer(fechar2)
superResultadoGlicemia.addSubLayer(resultadoGlicemia)
superResultadoGlicemia.backgroundColor = "white"
fechar2.visible = false

#Resultado Hemograma
resultadoHemograma.draggable.enabled = true
resultadoHemograma.draggable.speedX = 0
superResultadoHemograma.addSubLayer(fechar3)
superResultadoHemograma.addSubLayer(resultadoHemograma)
superResultadoHemograma.backgroundColor = "white"
fechar3.visible = false

startExames.fadeInX()
cardLipidico.bringToFront()
cardGlicemia.bringToFront()
cardHemograma.bringToFront()


#eventos

superCardHorizontal.on Events.DragStart, ->
	initialPosition = superCardHorizontal.x

superCardHorizontal.on Events.DragEnd, ->
	displacement = (initialPosition - superCardHorizontal.x)
	initialState = superCardHorizontal.states.state
	#print initialPosition, superCardHorizontal.x, displacement
	if Math.abs(displacement) < WIDTH / 8
		superCardHorizontal.states.switch(initialState)
	else
		if displacement > 0 and initialState != "quartoCard"
			superCardHorizontal.states.next()
		else if displacement < 0 and initialState != "inicioCard"
			superCardHorizontal.states.previous()			
		else
			superCardHorizontal.states.switch(initialState)

changeScene = (scene) ->
	switch scene
		when 3 
			compararIcone.botaoComparar()
			compararExamesTitle.opacidadeMostrar()
			animWait1 = compararIcone.opacidadeEsconder()
			animWait1.on Events.AnimationEnd, ->
				examesAntigosicone.visible = false
			bigTitle.opacidadeEsconder()
			telaCompararDois.bringToFront()
			telaCompararDois.fadeInXExame()
			telaCompararDois.opacity = 1
			botaoCompararExameSet.bringToFront()
			botaoCompararExameSet.visible = true
			botaoCompararExameNov.bringToFront()
			botaoCompararExameMar.bringToFront()
			
			botaoCompararExameNov.visible = true
			botaoCompararExameSet.visible = true
			botaoCompararExameMar.visible = true
			telaCompararDois.visible = true
			telaCompararTres.visible = true
			telaCompararQuatro.visible = true
			
		when 4 
			superHiperCard.states.switch("stateA")
			telaComparar.fadeOutXRight()
			backComparar.visible = false
			compararIcone.opacidadeMostrar()
			examesAntigosicone.opacidadeMostrar()
			examesAntigosicone.visible = true
			compararExamesTitle.opacidadeEsconder()
			bigTitle.opacidadeMostrar()
			
			botaoCompararExameNov.visible = false
			botaoCompararExameSet.visible = false
			botaoCompararExameMar.visible = false
			telaCompararDois.visible = false
			telaCompararTres.visible = false
			telaCompararQuatro.visible = false
			
		when 5
			examesAntigosicone.botaoExamesAntigos()
			examesAntigosTitle.opacidadeMostrar()
			bigTitle.opacidadeEsconder()
		when 6
			examesAntigosLista.fadeOutX()
			backExamesAntigos.visible = false
			examesAntigosicone.opacidadeMostrar()
			examesAntigosTitle.opacidadeEsconder()
			compararIcone.opacidadeMostrar()
			bigTitle.opacidadeMostrar()
			superHiperCard.states.switch("stateA")
			superHiperCard.states.switch("stateD")
		when 7
			telaCompararTres.bringToFront()
			telaCompararTres.opacidadeMostrar()
			telaCompararDois.opacidadeEsconder()
			telaCompararQuatro.opacidadeEsconder()
		when 8
			telaCompararDois.bringToFront()
			telaCompararDois.opacidadeMostrar()
			telaCompararTres.opacidadeEsconder()
			telaCompararQuatro.opacidadeEsconder()
		when 9
			telaCompararQuatro.bringToFront()
			telaCompararQuatro.opacidadeMostrar()
			telaCompararTres.opacidadeEsconder()
			telaCompararDois.opacidadeEsconder()

		
Layer::botaoComparar = ->
	telaComparar.bringToFront()
	telaComparar.fadeInXRight()
	#superHiperCard.x = -100
	superHiperCard.states.switch("stateB")
	examesAntigosicone.opacidadeEsconder()
	backComparar.bringToFront()
	backComparar.visible = true

Layer::botaoExamesAntigos = ->
	examesAntigosLista.bringToFront()
	examesAntigosLista.fadeInXLeft()
	superHiperCard.states.switch("stateC")
	compararIcone.opacidadeEsconder()
	examesAntigosicone.opacidadeEsconder()
	backExamesAntigos.bringToFront()
	backExamesAntigos.visible = true
	

compararIcone.on Events.Click, ->
	changeScene(3)
	telaComparar.opacity = 1

backComparar.on Events.Click, -> 
	changeScene(4)

examesAntigosicone.on Events.Click, ->
	changeScene(5)
	examesAntigosLista.opacity = 1

backExamesAntigos.on Events.Click, -> 
	changeScene(6)

botaoCompararExameSet.on Events.Click, ->
	changeScene(7)
	
botaoCompararExameNov.on Events.Click, ->
	changeScene(8)
	
botaoCompararExameMar.on Events.Click, ->
	changeScene(9)

superHiperCard.states.add("stateA", {x:0})
superHiperCard.states.add("stateB", {x:-100})
superHiperCard.states.add("stateC", {x:20})
superHiperCard.states.add("stateD", {x:0})





#Carta Lipidico
handleCard = (card_layer, backcard_layer, close_layer, super_layer, y_pos) ->
	backcard_layer.on Events.DragEnd, ->
		if backcard_layer.y > 0
		    backcard_layer.animate
		        properties:
		            x: -45, y: -100
		        curve: "spring(600, 30, 0)"
		if backcard_layer.y < y_pos
			backcard_layer.animate
				properties:
					x: -45, y: y_pos
				curve: "spring(600, 30, 0)"
		if backcard_layer.y < -100
			close_layer.opacity = 0
		else
			close_layer.opacity = 1	
	
	card_layer.on Events.Click, ->
		displacement = (initialPosition - superCardHorizontal.x)
		if displacement == 0
			super_layer.visible = true
			viraCarta(card_layer, super_layer)
			close_layer.visible = true
			close_layer.bringToFront()
			
	close_layer.on Events.Click, ->
		close_layer.visible = false
		desviraCarta(card_layer, super_layer)
		Utils.delay 0.6, ->
			super_layer.visible = false

handleCard(cardLipidico, resultadoLipidico, fechar, superResultadoLipidico, -831)
handleCard(cardGlicemia, resultadoGlicemia, fechar2, superResultadoGlicemia, -131)
handleCard(cardHemograma, resultadoHemograma, fechar3, superResultadoHemograma, -2231)


	
