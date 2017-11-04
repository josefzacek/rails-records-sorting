class Product < ApplicationRecord
  acts_as_list add_new_at: :top
end
