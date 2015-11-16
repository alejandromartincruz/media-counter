require 'pry'

require_relative 'display.rb'

class Media
	attr_reader :urls

	def initialize
		@urls = []
	end

	def add_url(url)
		@urls << Display.new.show(url)
	end

end