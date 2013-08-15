class AddPdaToPreterm < ActiveRecord::Migration
  def change
  	add_column :preterms, :pda, :decimal
  end
end
