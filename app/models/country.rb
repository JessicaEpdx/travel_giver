class Country < ActiveRecord::Base
  has_many :projects, dependent: :destroy
  validates :name, :presence => true
  validates :continent, :presence => true
  validates :description, :presence => true

  has_attached_file :attached_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :attached_image, :content_type => /\Aimage\/.*\Z/

  scope :asia, -> { where(continent: 'Asia') }
  scope :africa, -> { where(continent: 'Africa') }
  scope :northAmerica, -> { where(continent: 'North-America') }
  scope :southAmerica, -> { where(continent: 'South-America') }
  scope :europe, -> { where(continent: 'Europe') }
  scope :antarctica, -> { where(continent: 'Antarctica') }
  scope :australia, -> { where(continent: 'Australia') }

end
