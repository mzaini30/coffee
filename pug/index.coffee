$(".input").on "keyup", ->
	try
		$(".output").val CoffeeScript.compile $(@).val(), bare: on
		hasil = []
		console.log = (x) ->
			hasil.push x
		eval CoffeeScript.compile $(@).val(), bare: on
		$(".console").val hasil.join "\n"
	catch x
		$(".output").val x
		$(".console").val ""