$(".input").on "keyup", ->
	try
		$(".output").val CoffeeScript.compile $(@).val(), bare: on
		hasil12345 = []
		console.log = (x) ->
			hasil12345.push x
		eval CoffeeScript.compile $(@).val(), bare: on
		$(".console").val hasil12345.join "\n"
	catch x
		$(".console").val x
		$(".output").val ""