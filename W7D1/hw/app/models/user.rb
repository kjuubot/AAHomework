class User < ApplicationRecord
    validates :username, :session_token, presence: true
    validates :password_digest, presence: true, message: "Password can't be blank"
    validates :password, length: { minimum: 6 }, allow_nil: true

    before_validation :ensure_session_token
    attr_reader :password

    def self.find_by_credentials(username, pw)
        self.where('users.username: 'username'' AND 'users.password: 'pw'')
    end

    def self.generate_session_token
    end

    def reset_session_token!
        User.generate_session_token
    end

    def ensure_session_token
        User.generate_session_token if !:session_token
    end

    def password=(value)
        @password = value
    end
end
