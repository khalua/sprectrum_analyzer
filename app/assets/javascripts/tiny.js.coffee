window.app =
  audio: null
  dancer: null
  timer: null
  ready: ->
    $('.play').click(app.play_song)

  show_spectrum: ->
    spectrum = app.dancer.getSpectrum()
    rects = d3.select('svg').selectAll('rect').data(spectrum)
    rects.enter() #remember, this is all the rectangles that have NOT been created
         .append('rect')
         .attr('x', (d,i) -> i * 2)
         .attr('y', 0)
         .attr('width', 2)
    rects.transition()
         .duration(500)
         .attr('height', (d) -> d * 1000)
         .style('fill', "rgb(#{Number.random(1,255)},#{Number.random(1,255)}, #{Number.random(1,255)})")
  play_song: (e) ->
    e.preventDefault()
    filename = $(this).parent().data('filename')
    position = $(this).parent().data('position')

    $('audio').remove()
    $('#music').append('<audio controls="controls" src="" />')
    app.audio = $('audio')[0]

    app.dancer = new Dancer()
    console.log("filename: #{filename}, pos: #{position}")
    app.audio.src = "/audios/#{filename}"
    app.dancer.load(app.audio)
    app.dancer.play()
    clearInterval(app.timer)
    app.timer = setInterval(app.show_spectrum, 1000)


$('document').ready(app.ready)