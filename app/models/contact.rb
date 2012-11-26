class Contact < ActiveRecord::Base
  attr_accessible :address, :name, :latitude, :longitude

  acts_as_gmappable
  
  def gmaps4rails_address
  	self.address
  end
  
  def gmaps4rails_infowindow
  		"<h4>#{name}</h4>" << "<h4>#{address}</h4>"
  end
end
