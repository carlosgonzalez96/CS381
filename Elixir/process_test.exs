defmodule Proc do

	def spawn_proc do
		spawn Proc, :send_text, [self()]
	end

	def my_func do
		"hello world"
	end

	def send_text(pid) do
		send pid, {:msg, my_func()}
	end

	def receive_text do
		receive do
			{:msg, msg} -> msg
		end
	end
end