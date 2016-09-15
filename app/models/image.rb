class Image < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :title
  has_and_belongs_to_many :tags

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>"}
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\z/
end
