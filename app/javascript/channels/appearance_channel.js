import consumer from "./consumer"

consumer.subscriptions.create('AppearanceChannel', {
  connected() {},

  disconnected() {},

  received(data) {
    const user = JSON.parse(data);
    const user_status = $('#user-' + user.id + '-status');
    if(user.online == true) {
      user_status.addClass('online').removeClass('offline').html('<span> online</span>');
    } else {
      user_status.addClass('offline').removeClass('online').html('<span> offline</span>');
    }
  }
});
