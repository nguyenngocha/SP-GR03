class AddressList < ApplicationRecord
  belongs_to :ward
  belongs_to :user

  def self.to_s
  	w = Ward.find_by_id(self.ward_id)
  	d = District.find_by_id(w.district_id)
  	r = Province.find_by_id(d.Province_id)
  	s = self.address + w.type + w.name + d.type + d.name + r.type + r.name
  end
end
