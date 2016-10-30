class Patient < ActiveRecord::Base
  belongs_to :doctor
     validates_format_of :email, :with => /\A([\w+\-].?)+@[gmail]+(\.[a-z]+)*\.[a-z]+\z/i
     validates_format_of :phone_number, :with => /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/
end
