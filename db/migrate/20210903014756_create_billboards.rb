class CreateBillboards < ActiveRecord::Migration[6.1]
  def change
    create_table :billboards do |t|
            #  dont know if we need to change t.text to string or datatype?
      t.string :artist
      t.string :song

      t.timestamps
    end
  end
end
