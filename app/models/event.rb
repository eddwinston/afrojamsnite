class Event < ActiveRecord::Base
  
  validates :title, :presence => true,
                    :length => { :maximum => 70 }
  validates :start_time, :presence => true
  
  has_attached_file :photo, 
                    :styles => { :small => "150x150>", :medium => "400x400>" },
                    :storage => :s3, 
                    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", 
                    :path => "/:style/:filename"
                    
                    #:url => "/assets/events/:id/:style/:basename.:extension",
                    #:path => ":rails_root/public/assets/events/:id/:style/:basename.:extension"
  
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
