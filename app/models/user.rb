class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	belongs_to :role
	has_many :orders

	validates :name, presence: true, uniqueness: true
	validates :admin, inclusion: { in: [true, false] }
	validates :role, presence: true

  def email_required?
  	false
	end

	def has_permission? permission
  	self.role.permissions.each do |perm|
      if perm.name.eql? permission
  			return true
  		end
  	end
  	return false
  end

end
