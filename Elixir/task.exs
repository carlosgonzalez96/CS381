defmodule TaskReader do

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
			task = Task.async(Reader, :file_words_helper, [hd(x)])
			rest = file_words(tl x)
			Task.await(task) + rest
		end
	end
end
