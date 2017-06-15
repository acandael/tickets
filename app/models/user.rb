class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
      :recoverable, :rememberable, :trackable, :validatable

  enum role: {user: 0, vip: 1, admin: 2}

  has_many :tickets

  #
  def tickets_in_cart
    tickets.waiting.all.to_a
  end
  #

end
