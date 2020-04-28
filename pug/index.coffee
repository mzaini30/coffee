$(".input").on "keyup", ->
	try
		$(".output").val CoffeeScript.compile $(@).val(), bare: on
	catch x
		$(".output").val x