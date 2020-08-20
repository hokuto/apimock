class CreateApiResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :api_responses do |t|
      t.text :json

      t.timestamps
    end
  end
end
