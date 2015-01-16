class User < ActiveRecord::Base
	has_one :perfil

	after_create :create_perfil
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	private

	def create_perfil
		Perfil.create(user: self)
	end
end
