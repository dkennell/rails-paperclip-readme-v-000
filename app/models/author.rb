class Author < ActiveRecord::Base
  has_many :posts
  has_attached_file :avatar, styles: { thumb: "100x100>" }, default_url: ':style/default.png'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end