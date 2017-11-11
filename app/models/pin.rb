class Pin < ActiveRecord::Base
    belongs_to :user 
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    
    # has_attached_file :image, :styles => { :medium => "300X300>", :thumb => "100X100>"}
    # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end

