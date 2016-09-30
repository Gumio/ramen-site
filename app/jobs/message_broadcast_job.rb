#サーバーサイド側で登録されたコメントをクライアントにブロードキャスト
class MessageBroadcastJob < ApplicationJob
  queue_as :default

  #ここでブロードキャストを実行
  def perform(message)
    ActionCable.server.broadcast 'room_channel',
                                    message: render_message(message)
  end

  #コントローラ以外の場所でビューをレンダリングする
  private
    def render_message(message)
      ApplicationController.renderer.render(
                                    partial: 'messages/message',
                                      locals: { message: message })
    end
end
