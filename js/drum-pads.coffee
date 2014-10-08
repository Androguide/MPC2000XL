$ ->
    if typeof AudioContext isnt "undefined"
        context = new AudioContext()
    else if typeof webkitAudioContext isnt "undefined"
        context = new webkitAudioContext()
    else
        throw new Error("Sorry, AudioContext is not supported. :(")

    # PadTrigger Constructor
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
            source.noteOn context.currentTime
            console.log "Pad Hit: A" + domNode.replace /^\D+/g, ''
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

    pads = [
        pad1 =
            domId: "pad-1"
            sampleA: "assets/samples/kicks/kick_valve_1.wav"
            sampleB: "assets/samples/kicks/kick_valve_1.wav"
            sampleC: "assets/samples/kicks/kick_valve_1.wav"
            sampleD: "assets/samples/kicks/kick_valve_1.wav"
        pad2 =
            domId: "pad-2"
            sampleA: "assets/samples/hihats/hihat_valve_1.wav"
            sampleB: "assets/samples/hihats/hihat_valve_1.wav"
            sampleC: "assets/samples/hihats/hihat_valve_1.wav"
            sampleD: "assets/samples/hihats/hihat_valve_1.wav"
        pad3 =
            domId: "pad-3"
            sampleA: "assets/samples/snares/snare_valve_1.wav"
            sampleB: "assets/samples/snares/snare_valve_1.wav"
            sampleC: "assets/samples/snares/snare_valve_1.wav"
            sampleD: "assets/samples/snares/snare_valve_1.wav"
        pad4 =
            domId: "pad-4"
            sampleA: "assets/samples/rides/ride_valve_1.wav"
            sampleB: "assets/samples/rides/ride_valve_1.wav"
            sampleC: "assets/samples/rides/ride_valve_1.wav"
            sampleD: "assets/samples/rides/ride_valve_1.wav"
        pad5 =
            domId: "pad-5"
            sampleA: "assets/samples/kicks/kick_cr78_1.wav"
            sampleB: "assets/samples/kicks/kick_cr78_1.wav"
            sampleC: "assets/samples/kicks/kick_cr78_1.wav"
            sampleD: "assets/samples/kicks/kick_cr78_1.wav"
        pad6 =
            domId: "pad-6"
            sampleA: "assets/samples/hihats/hihat_cr78_1.wav"
            sampleB: "assets/samples/hihats/hihat_cr78_1.wav"
            sampleC: "assets/samples/hihats/hihat_cr78_1.wav"
            sampleD: "assets/samples/hihats/hihat_cr78_1.wav"
        pad7 =
            domId: "pad-7"
            sampleA: "assets/samples/snares/snare_cr78_1.wav"
            sampleB: "assets/samples/snares/snare_cr78_1.wav"
            sampleC: "assets/samples/snares/snare_cr78_1.wav"
            sampleD: "assets/samples/snares/snare_cr78_1.wav"
        pad8 =
            domId: "pad-8"
            sampleA: "assets/samples/bongos/bongo_cr78_1.wav"
            sampleB: "assets/samples/bongos/bongo_cr78_1.wav"
            sampleC: "assets/samples/bongos/bongo_cr78_1.wav"
            sampleD: "assets/samples/bongos/bongo_cr78_1.wav"
        pad9 =
            domId: "pad-9"
            sampleA: "assets/samples/kicks/kick_cr78_2.wav"
            sampleB: "assets/samples/kicks/kick_cr78_2.wav"
            sampleC: "assets/samples/kicks/kick_cr78_2.wav"
            sampleD: "assets/samples/kicks/kick_cr78_2.wav"
        pad10 =
            domId: "pad-10"
            sampleA: "assets/samples/tambourines/tamb_cr78_1.wav"
            sampleB: "assets/samples/tambourines/tamb_cr78_1.wav"
            sampleC: "assets/samples/tambourines/tamb_cr78_1.wav"
            sampleD: "assets/samples/tambourines/tamb_cr78_1.wav"
        pad11 =
            domId: "pad-11"
            sampleA: "assets/samples/snares/snare_cr78_2.wav"
            sampleB: "assets/samples/snares/snare_cr78_2.wav"
            sampleC: "assets/samples/snares/snare_cr78_2.wav"
            sampleD: "assets/samples/snares/snare_cr78_2.wav"
        pad12 =
            domId: "pad-12"
            sampleA: "assets/samples/bongos/bongo_cr78_2.wav"
            sampleB: "assets/samples/bongos/bongo_cr78_2.wav"
            sampleC: "assets/samples/bongos/bongo_cr78_2.wav"
            sampleD: "assets/samples/bongos/bongo_cr78_2.wav"
        pad13 =
            domId: "pad-13"
            sampleA: "assets/samples/kicks/kick_cr78_3.wav"
            sampleB: "assets/samples/kicks/kick_cr78_3.wav"
            sampleC: "assets/samples/kicks/kick_cr78_3.wav"
            sampleD: "assets/samples/kicks/kick_cr78_3.wav"
        pad14 =
            domId: "pad-14"
            sampleA: "assets/samples/open-hats/open-hat_cr78_1.wav"
            sampleB: "assets/samples/open-hats/open-hat_cr78_1.wav"
            sampleC: "assets/samples/open-hats/open-hat_cr78_1.wav"
            sampleD: "assets/samples/open-hats/open-hat_cr78_1.wav"
        pad15 =
            domId: "pad-15"
            sampleA: "assets/samples/snares/snare_cr78_3.wav"
            sampleB: "assets/samples/snares/snare_cr78_3.wav"
            sampleC: "assets/samples/snares/snare_cr78_3.wav"
            sampleD: "assets/samples/snares/snare_cr78_3.wav"
        pad16 =
            domId: "pad-16"
            sampleA: "assets/samples/bongos/bongo_cr78_3.wav"
            sampleB: "assets/samples/bongos/bongo_cr78_3.wav"
            sampleC: "assets/samples/bongos/bongo_cr78_3.wav"
            sampleD: "assets/samples/bongos/bongo_cr78_3.wav"
    ]

    # Initialize all pads
    for pad in pads
        new PadTrigger(pad.domId, pad.sampleA)