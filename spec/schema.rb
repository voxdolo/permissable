ActiveRecord::Schema.define :version => 0 do
  create_table :tags, :force => true do |t|
    t.column :name, :string
  end
  
  create_table :taggings, :force => true do |t|
    t.column :tag_id, :integer
    t.column :taggable_id, :integer
    t.column :taggable_type, :string
    t.column :context, :string
    t.column :created_at, :datetime
  end
  
  create_table :users, :force => true do |t|
    t.column :name, :string
    #t.column :cached_tag_list, :string
  end
end
