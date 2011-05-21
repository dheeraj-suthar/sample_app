module ApplicationHelper

  def title
	base_title = "Dheeraj's made ruby sample"
	if @title.nil?
		base_title
	else
		"#{base_title} > #{@title}"
	end
	end
end
