class User < ApplicationRecord
  belongs_to :city
  has_many :gossips, foreign_key: 'author_id', class_name: "Gossip"
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :join_table_recipient_pms, foreign_key: :recipient_id, class_name: "JoinTableRecipientPm"
  has_many :received_messages, through: :join_table_recipient_pms
  has_many :comments, foreign_key: 'author_id', class_name: "Comment"
end
