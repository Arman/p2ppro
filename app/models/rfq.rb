class Rfq < ActiveRecord::Base
	has_many :rfq_lines, :dependent => :destroy

	accepts_nested_attributes_for :rfq_lines, :reject_if => :all_blank, :allow_destroy => true

	belongs_to :creator, :class_name => "User", :foreign_key => "creator_id"

	validates_presence_of :status, :notes

end
