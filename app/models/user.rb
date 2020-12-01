class User < ApplicationRecord
    # L'utilisateur doit pouvoir garder un mdp secure
    has_secure_password

    # L'email ne doit pas être null et doit être unique
    validates :email, presence: true, uniqueness:true

    # L'utilisateur a plusieurs tweet avec clé user_id dans table Tweetes
    has_many :tweets
end


