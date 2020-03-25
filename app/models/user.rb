class User < ApplicationRecord
    # has_attached_file :profile_pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    # validates_attachment :profile_pic, presence: true
    # do_not_validate_attachment_file_type :profile_pic
    has_many :videos
    has_many :comments

    validates :username, uniqueness: true
    validates :profile_name, uniqueness: true
    validates :username, presence: true
    validates :profile_name, presence: true

    has_secure_password
end
