class Train < ActiveRecord::Base
  validates :name, presence: true

  def display_name
    return 'iHOWER' if name =='ihover'
    name.upcase
  end

end
