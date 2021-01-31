class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime   :start
      t.datetime   :end
      t.timestamps
    end
  end
end
