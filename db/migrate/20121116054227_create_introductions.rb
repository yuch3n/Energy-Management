class CreateIntroductions < ActiveRecord::Migration
  def up
    create_table 'introductions' do |t|
      t.string 'title'
      t.text 'content'
      t.timestamps
    end
  end

  def down
      drop_table 'introductions'
  end
end
