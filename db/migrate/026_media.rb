class Media < ActiveRecord::Migration
  def self.up
    create_table :media do |t|
	  t.string		:title
	  t.text  		:description
	  t.integer 	:project_id
	  t.string		:author
	  t.date		:date
	  t.string		:publisher
	  t.string		:magazine
	  t.string		:volume
	  t.string		:number
	  t.string		:isbn
	  t.integer		:position
	  t.timestamps
	  end
  end

  def self.down
    drop_table :media
  end
end
