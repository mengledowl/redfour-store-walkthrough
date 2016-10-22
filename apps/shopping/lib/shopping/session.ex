defmodule Redfour.Shopping.Session do
	use GenServer

	def start_link(%{key: key} = args) do
		GenServer.start_link(__MODULE__, args, name: key)
	end

	defstruct [
		domain: nil,
		id: nil,
		key: nil,
		landing: "/",
		ip: "127.0.0.1",
		member_id: nil,
		items: [],
		logs: [],
		discounts: []
	]
end