class Wombat < ActiveRecord::Base
  attr_accessible :name, :image
  mount_uploader :image, WombatUploader
end