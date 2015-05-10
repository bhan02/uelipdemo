class AddLastUpdatedToAlumnus < ActiveRecord::Migration
  def change
    add_column :alumnus, :last_updated, :string
  end
end
