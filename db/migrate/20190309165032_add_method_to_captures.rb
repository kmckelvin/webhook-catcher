class AddMethodToCaptures < ActiveRecord::Migration[5.2]
  def change
    add_column :captures, :method, :string, limit: 10
  end
end
