class User < ActiveRecord::Base
    has_many :reviews
    has_many :mechanics, through: :reviews
end