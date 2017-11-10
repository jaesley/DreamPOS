class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.search(query)
    sanitized_query = query.downcase.gsub(/[%_]/, '\\\\\0')
    User.where(User.arel_table[:email].lower.matches("%#{sanitized_query}%"))
  end
end
