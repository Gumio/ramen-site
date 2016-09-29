class Message < ApplicationRecord
  #コミットした後にブロードキャストする
  after_create_commit { MessageBroadcastJob.perform_later self }
end
