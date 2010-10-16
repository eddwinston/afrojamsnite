class Event < ActiveRecord::Base
  
  validates :title, :presence => true,
                    :length => { :maximum => 70 }
  validates :start_time, :presence => true
  
end
