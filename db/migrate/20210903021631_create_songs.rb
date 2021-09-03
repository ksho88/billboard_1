class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :song do |t|
            #  dont know if we need to change t.text to string or datatype?
      t.datatype :attr
      t.belongs_to :billboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
