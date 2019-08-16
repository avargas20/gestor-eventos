class Event < ActiveRecord::
  belongs_to :category
  belongs_to :modality
end
