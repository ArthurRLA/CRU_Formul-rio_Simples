class Contact
  include ActiveModel::Model
  attr_accessor :name, :address, :city, :state, :phone, :message

  validates :name, :address, :city, :state, :phone, :message, presence: true
end
