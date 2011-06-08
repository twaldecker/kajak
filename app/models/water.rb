class Water < ActiveRecord::Base
  
  validates :name, :presence => true
  
  has_many :stations, :dependent => :destroy
  has_many :tags
  
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
