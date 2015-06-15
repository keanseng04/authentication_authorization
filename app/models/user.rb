class User < ActiveRecord::Base
<<<<<<< HEAD
  authenticates_with_sorcery! do |config|
    config.authentications_class = Authentication
  end

  has_many :authentications, :dependent => :destroy
  accepts_nested_attributes_for :authentications

  mount_uploader :avatar, AvatarUploader

=======
  authenticates_with_sorcery!
>>>>>>> 5127fe1c51071e2940b319cd12983cf6829c1aad
end
