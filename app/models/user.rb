class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :permissions
  has_many :roles, through: :permissions

  after_create :setup_user_role

  def role?(role)
    self.roles.pluck(:name).include? role
  end

  private

  def setup_user_role
    Permission.create(user_id: self.id, role_id: Role.find_by(name: “user).id)
  end

end
