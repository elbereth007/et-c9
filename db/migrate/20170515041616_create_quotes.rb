class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      # next 2 lines added 14 may 17
      t.string :saying
      t.string :author
      t.timestamps
    end
  end
end
