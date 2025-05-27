class Contact
  include ActiveModel::Model
  attr_accessor :name, :address, :city, :state, :phone, :message

  validates :name, :address, :city, :state, :phone, :message, presence: true

  def self.fake
    new(
      name: "Arthur Rezende",
      address: "Rua Exemplo, 123",
      city: "Goiânia",
      state: "GO",
      phone: "999999999999",
      message: "Que bacana esse email que me foi enviado"
    )
  end
end