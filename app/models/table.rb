class Table < ActiveRecord::Base
  belongs_to :created_by, class_name: "User"
  belongs_to :opponent, class_name: "User"
end
