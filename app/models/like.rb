class Like < ApplicationRecord
  belongs_to :gossip, optional: true  #can be empty
  belongs_to :comment, optional: true #can be empty
end
