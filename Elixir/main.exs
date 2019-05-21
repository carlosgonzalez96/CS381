defmodule Reader do

	def spawn_proc(file) do
		spawn Reader, :send_func, [self(), file]
	end

	def send_func(pid, file) do
		send pid, {:msg, file_words_helper(file)}
	end

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
			spawn_proc(hd x)
			receive do 
				{:msg, msg} -> msg + file_words(tl x)
			end
		end
	end
end
