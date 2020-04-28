new VConsole
$(".input").on "keyup", ->
	try
		eval CoffeeScript.compile $(@).val(), bare: on
		$(".output").val CoffeeScript.compile $(@).val(), bare: on
	catch x
		$(".output").val x