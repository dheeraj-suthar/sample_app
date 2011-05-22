module ApplicationHelper
@ret_val="tom"
  def title
	base_title = "Dheeraj's made ruby sample"
	if @title.nil?
		base_title
	else
		"#{base_title} > #{@title}"
	end
  end
  def logo
	logo_path = image_tag("logo.png", :class => "round")
	if logo_path.nil?
		logo_path = "Back to home"
	end
	@ret_val = logo_path
  end
end
