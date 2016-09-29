#クライアント側
App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    #受け取ったメッセージをmessages idの最後につけたす
    $('#messages').append data['message']

  #サーバーサイドにメッセージを飛ばすspeakを定義
  speak: ->
    @perform 'speak', message: message
