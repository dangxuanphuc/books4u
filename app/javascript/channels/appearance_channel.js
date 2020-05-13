import consumer from "./consumer"

consumer.subscriptions.create('AppearanceChannel', {
  connected() {},

  disconnected() {},

  received(data) {
    const user = JSON.parse(data['user']);
    const user_status = $("#user-" + user.id + "-status");
    const chat_status = $("#chat-status-" + user.id);
    if(user.online == true) {
      user_status.addClass('online').removeClass('offline').html('<span> online</span>');
      chat_status.addClass('online').removeClass('offline').text('Active now');
    } else {
      user_status.addClass('offline').removeClass('online').html('<span> offline</span>');
      chat_status.addClass('offline').removeClass('online').text(data['time']);
    }
  }
});
