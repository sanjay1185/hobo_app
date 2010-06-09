class Party < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string,:required
    date        :date,:required
    #user_id     :integer
    description :string
    timestamps
    
  end
has_many :users,:through=>:party_users,:accessible =>:true
    has_many :party_users,:dependent=>:destroy

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
