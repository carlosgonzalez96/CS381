defmodule Reader do

	def file_words_helper(file) do
		case File.read(file) do
		  {:ok, body} ->
		    String.split(body) |> length
		  {:error, _ } ->
		    0
		end
	end

	def file_words(x) do
		if x == [] do 
			0
		else 
			file_words_helper(hd x) + file_words(tl x)
		end
	end
end