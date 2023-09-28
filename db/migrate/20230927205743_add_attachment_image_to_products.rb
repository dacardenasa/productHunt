class AddAttachmentImageToProducts < ActiveRecord::Migration[6.0]
  def self.up
    change_table :products do |t|
      t.change :image, :attachment
    end
  end

  def self.down
    remove_attachment :products, :image
  end
end
