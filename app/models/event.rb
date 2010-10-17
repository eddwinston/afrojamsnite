class Event < ActiveRecord::Base
  
  validates :title, :presence => true,
                    :length => { :maximum => 70 }
  validates :start_time, :presence => true
  
  has_attached_file :photo, 
                    :styles => { :small => "150x150>", :medium => "400x400>" },
                    :url => "/assets/events/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/events/:id/:style/:basename.:extension"
  #validates :photo, :content_type => ['image/jpeg', 'image/png'],
  #                  :less_than => 6.megabytes
  
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
