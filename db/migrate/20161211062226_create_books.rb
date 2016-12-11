class CreateBooks < ActiveRecord::Migration
  def up
  	create_table :books do |t|
  	  t.string :title
  	  t.string :author
  	 end
  end

  def down
  	drop_table :books
  end
end
