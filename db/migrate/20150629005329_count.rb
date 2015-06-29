class Count < ActiveRecord::Migration
  def change
    create_table :counts do |t|
      t.datetime "visit"
    end
  end
end
