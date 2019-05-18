fun file_words nil = 0
|	file_words(x) =
	let
		fun string_list file = String.tokens Char.isSpace file
		val i = TextIO.openIn(hd x)
		val f = TextIO.inputAll(i)
		val _ = TextIO.closeIn(i)
		val s = string_list f
	in
		length(s) + 
		file_words(tl x)
	end;
