class CreateFigures < ActiveRecord::Migration[6.0]
  def change
    create_table :figures do |t|
      t.string      :first_name
      t.string      :last_name
      t.date        :birthday
      t.references  :party
      t.references  :user

      t.timestamps
    end
  end
end
