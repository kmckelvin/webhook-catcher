class CreateCapturesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :captures do |t|
      t.string :service, index: true
      t.string :user_agent
      t.string :source_ip
      t.text :headers
      t.text :body

      t.timestamps
    end
  end
end
