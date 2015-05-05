class CreateAlumnus < ActiveRecord::Migration
  def change
    create_table :alumnus do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :term
      t.string :school
      t.string :current_city
      t.string :state
      t.string :current_role
      t.string :current_organization
      t.string :permission_to_share_contactinfo
      t.string :do_not_contact

      t.timestamps null: false
    end
  end
end
