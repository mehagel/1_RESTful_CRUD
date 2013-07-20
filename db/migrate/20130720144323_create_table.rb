class CreateTable < ActiveRecord::Migration
  def change
    create_tables :notes do |t|
      t.string :title
      t.string :content
    end
  end
end
