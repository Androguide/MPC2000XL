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


    # Pad Banks Buttons & LEDs Handling
    ledA = $('#led-bank-a')
    ledB = $('#led-bank-b')
    ledC = $('#led-bank-c')
    ledD = $('#led-bank-d')

    $('#bank-a').click ->
        $('.bank-leds.active').removeClass 'active'
        ledA.toggleClass 'active'
        if ledA.hasClass 'active' then window.currentPadBank = "A"

    $('#bank-b').click ->
        $('.bank-leds.active').removeClass 'active'
        ledB.toggleClass 'active'
        if ledB.hasClass 'active' then window.currentPadBank = "B"

    $('#bank-c').click ->
        $('.bank-leds.active').removeClass 'active'
        ledC.toggleClass 'active'
        if ledC.hasClass 'active' then window.currentPadBank = "C"

    $('#bank-d').click ->
        $('.bank-leds.active').removeClass 'active'
        ledD.toggleClass 'active'
        if ledD.hasClass 'active' then window.currentPadBank = "D"