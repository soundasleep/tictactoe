class Table < ActiveRecord::Base
  belongs_to :created_by
  belongs_to :opponent
end
