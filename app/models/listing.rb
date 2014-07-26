class Listing < ActiveRecord::Base
has_attached_file :image, :styles => { :medium => "200x200", :thumb => "100x>" }, :default_url => "default.jpg"
#validates_attachment_content_type :image,  :content_type => "image/jpg", :content_type => "image/jpeg"
validates_attachment_content_type :image, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']

#validates_attachment_content_type :image, :content_type => "/^image/"

end
