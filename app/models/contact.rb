class Contact < ActiveRecord::Base
  attr_accessible :address, :name, :latitude, :longitude

  acts_as_gmappable
  
  def gmaps4rails_address
  	self.address
  end
  
  def gmaps4rails_infowindow
  		"<h5>#{name}</h5>" << "<h6>#{address}</h6>"
  end
end
