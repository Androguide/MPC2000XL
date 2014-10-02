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
        return

    # Record Gain Knob Binding
    recDeg = 0
    recordKnob = $('.record-knob')
    recordKnob.bind "mousewheel", (e) ->
        if e.originalEvent.wheelDelta / 120 > 0
            recDeg += 10
        else
            recDeg -= 10

        recordKnob.css "-moz-transform", "rotate(" + recDeg + "deg)"
        recordKnob.css "-webkit-transform", "rotate(" + recDeg + "deg)"
        recordKnob.css "-o-transform", "rotate(" + recDeg + "deg)"
        recordKnob.css "-ms-transform", "rotate(" + recDeg + "deg)"
        return

    # Volume Knob Binding
    volDeg = 0
    volumeKnob = $('.volume-knob')
    volumeKnob.bind "mousewheel", (e) ->
        if e.originalEvent.wheelDelta / 120 > 0
            volDeg += 10
        else
            volDeg -= 10

        volumeKnob.css "-moz-transform", "rotate(" + volDeg + "deg)"
        volumeKnob.css "-webkit-transform", "rotate(" + volDeg + "deg)"
        volumeKnob.css "-o-transform", "rotate(" + volDeg + "deg)"
        volumeKnob.css "-ms-transform", "rotate(" + volDeg + "deg)"
        return

    return
