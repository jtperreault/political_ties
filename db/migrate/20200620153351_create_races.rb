class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.references  :seat
      t.date        :date

      t.timestamps
    end
  end
end
