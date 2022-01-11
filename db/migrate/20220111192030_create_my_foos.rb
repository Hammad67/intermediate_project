class CreateMyFoos < ActiveRecord::Migration[6.1]
  def change
    create_table :my_foos do |t|
      t.string :name

      t.timestamps
    end
  end
end
