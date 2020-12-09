class CreateXApiClientActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :x_api_client_activities do |t|
      t.string :x_actor
      t.string :x_verb
      t.string :x_object
      t.string :x_result
      t.string :x_context

      t.timestamps
    end
  end
end
