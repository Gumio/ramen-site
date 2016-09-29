# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
#サーバーサイド側
class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  #受け取ったメッセージをMessageモデルに保存
  def speak(data)
    Message.create! content: data['message']
  end
end
