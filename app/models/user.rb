class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :trackable, :validatable, :confirmable, authentication_keys: [:login]
  acts_as_birthday :birthday
  has_enumeration_for :gender, with: Gender, create_helpers: true
  has_enumeration_for :role, with: UserRole, create_helpers: true, create_scopes: true
  has_enumeration_for :blood_type, with: BloodType, create_helpers: true

  before_validation :default_values, :normalize_values

  validates :name, length: { maximum: 50 }, full_name: true, allow_blank: true
  validates :username, presence: true, uniqueness: { case_sensitive: false }, username: true, length: { in: 2..50 }
  validates :password, presence: true, on: :update, allow_blank: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, email: true, length: { in: 5..50 }
  validates :gender, presence: true
  validates :role, presence: true
  validates :birthday, allow_blank: true, date: { after: 100.years.ago, before: 01.years.ago }

  attr_accessor :login

  def age
    birthday_age
  end

  private

  def default_values
    self.gender ||= Gender::OTHER
    self.role ||= UserRole::REGULAR
    self.blood_type ||= BloodType::A_POSITIVE
  end

  def normalize_values
    self.email = email.downcase if email.present?
  end

  def self.find_for_database_authentication(conditions = {})
    find_by(username: conditions[:login]) || find_by(email: conditions[:login])
  end

  def devise_mailer
    DeviseCustomMailer
  end
end
