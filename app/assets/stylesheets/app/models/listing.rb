class Listing < ActiveRecord::Base
if Rails.env.development?
	has_attached_file 	:image, :styles => { :medium => "200x200", :thumb => "100x>" }, :default_url => "default.jpg"
	validates_attachment_content_type :image, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']

else
	has_attached_file 	:image, :styles => { :medium => "200x200", :thumb => "100x>" }, :default_url => "default.jpg",
						:storage => :dropbox,
					    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	#				    :dropbox_options => {...}
						:path => ":style/:id_:filename"


	#validates_attachment_content_type :image, :content_type => "/^image/"


	#:dropbox_options => {...}

	#validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	validates_attachment_content_type :image, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
end

end