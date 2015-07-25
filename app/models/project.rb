class Project < ActiveRecord::Base
  has_and_belongs_to_many :users
  belongs_to :country

  validates_presence_of :total_needed
  validates :name, :presence => true
  validates :description, :presence => true

  has_attached_file :project_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :project_image, :content_type => /\Aimage\/.*\Z/
end
