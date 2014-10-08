$ ->
    # Data Wheel Binding
    deg = 0
    wheel = $('.wheel')
    wheel.bind "mousewheel", (e) ->
        if e.originalEvent.wheelDelta / 120 > 0
            deg += 15
        else
            deg -= 15

        wheel.css "-moz-transform", "rotate(" + deg + "deg)"
        wheel.css "-webkit-transform", "rotate(" + deg + "deg)"
        wheel.css "-o-transform", "rotate(" + deg + "deg)"
        wheel.css "-ms-transform", "rotate(" + deg + "deg)"

    # Record Gain Knob Binding
    recDeg = 0
    recordKnob = $('.record-knob')
    recordKnob.bind "mousewheel", (e) ->
        if e.originalEvent.wheelDelta / 120 > 0
            recDeg += 10
        else
            recDeg -= 10

        if recDeg >= -150 && recDeg <= 150
            recordKnob.css "-moz-transform", "rotate(" + recDeg + "deg)"
            recordKnob.css "-webkit-transform", "rotate(" + recDeg + "deg)"
            recordKnob.css "-o-transform", "rotate(" + recDeg + "deg)"
            recordKnob.css "-ms-transform", "rotate(" + recDeg + "deg)"

    # Volume Knob Binding
    volDeg = 0
    volumeKnob = $('.volume-knob')
    volumeKnob.bind "mousewheel", (e) ->
        if e.originalEvent.wheelDelta / 120 > 0
            volDeg += 10
        else
            volDeg -= 10

        if volDeg >= -150 && volDeg <= 150
            volumeKnob.css "-moz-transform", "rotate(" + volDeg + "deg)"
            volumeKnob.css "-webkit-transform", "rotate(" + volDeg + "deg)"
            volumeKnob.css "-o-transform", "rotate(" + volDeg + "deg)"
            volumeKnob.css "-ms-transform", "rotate(" + volDeg + "deg)"


    context = new webkitAudioContext()

    PadTrigger = (domNode, fileDirectory) ->
        @domNode = domNode
        @fileDirectory = fileDirectory
        bufferFunctionName = bufferFunctionName
        incomingBuffer = undefined
        savedBuffer = undefined
        xhr = undefined

        bufferFunctionName = ->
            source = context.createBufferSource()
            source.buffer = savedBuffer
            source.connect context.destination
            source.noteOn 0
            return

        xhr = new XMLHttpRequest()
        xhr.open "get", fileDirectory, true
        xhr.responseType = "arraybuffer"
        xhr.onload = ->
            context.decodeAudioData xhr.response, (incomingBuffer) ->
                savedBuffer = incomingBuffer
                note = document.getElementById(domNode)
                note.addEventListener "click", bufferFunctionName, false
                return

        xhr.send()
        return


    # Initial Pads Assignments
    kickPad1 = new PadTrigger("pad-1","assets/samples/kicks/kick_valve_1.wav");
    hihatPad2 = new PadTrigger("pad-2","assets/samples/hihats/hihat_valve_1.wav");
    snarePad3 = new PadTrigger("pad-3","assets/samples/snares/snare_valve_1.wav");
    ridePad4 = new PadTrigger("pad-4","assets/samples/rides/ride_valve_1.wav");
    kickPad5 = new PadTrigger("pad-5","assets/samples/kicks/kick_cr78_1.wav");
    hihatPad6 = new PadTrigger("pad-6","assets/samples/hihats/hihat_cr78_1.wav");
    snarePad7 = new PadTrigger("pad-7","assets/samples/snares/snare_cr78_1.wav");
    bongoPad8 = new PadTrigger("pad-8","assets/samples/bongos/bongo_cr78_1.wav");
    kickPad9 = new PadTrigger("pad-9","assets/samples/kicks/kick_cr78_2.wav");
    tambPad10 = new PadTrigger("pad-10","assets/samples/tambourines/tamb_cr78_1.wav");
    snarePad11 = new PadTrigger("pad-11","assets/samples/snares/snare_cr78_2.wav");
    bongoPad12 = new PadTrigger("pad-12","assets/samples/bongos/bongo_cr78_2.wav");
    kickPad13 = new PadTrigger("pad-13","assets/samples/kicks/kick_cr78_3.wav");
    openHatPad14 = new PadTrigger("pad-14","assets/samples/open-hats/open-hat_cr78_1.wav");
    snarePad15 = new PadTrigger("pad-15","assets/samples/snares/snare_cr78_3.wav");
    bongoPad16 = new PadTrigger("pad-16","assets/samples/bongos/bongo_cr78_3.wav");
