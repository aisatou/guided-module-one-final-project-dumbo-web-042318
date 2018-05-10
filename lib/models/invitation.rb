class Invitation < ActiveRecord::Base

belongs_to :guest, class_name: :user
belongs_to :event

end
