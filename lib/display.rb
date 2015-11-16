class Display

	def initialize
		@date = Time.now
	end

	def show(url)
		html = "<video class='inside-video' controls width='190px''><source src='#{url}'type='video/mp4'></video>"
	end


end