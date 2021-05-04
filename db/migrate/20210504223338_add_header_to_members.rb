class AddHeaderToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :header, :text
  end
end
