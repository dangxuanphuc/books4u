import consumer from "./consumer"

var chatChannel = {};
var conversation_function = function(current_user_id, user_id) {
  chatChannel = consumer.subscriptions.create({
    channel: 'ConversationChannel',
    current_user_id: current_user_id,
    user_id: user_id
  }, {
    connected() {},
    disconnected() {},
    received: function(data) {
      const conversation = $('#conversation').find("[data-user-id='" + user_id + "']");
      conversation.find('#messages-list').find('ul').append(data['message']);
      const message_id = data['message_id'];
      if(data['sender_id'] == parseInt(current_user_id)) {
        $("#message-" + message_id).addClass('message-sent');
      } else {
        $("#message-" + message_id).addClass('message-received');
      }

      const messages_list = conversation.find('#messages-list');
      const height = messages_list[0].scrollHeight;
      messages_list.scrollTop(height);
    },
    speak: function(message, user_id) {
      return this.perform('speak', {
        message: message,
        user_id: user_id
      });
    }
  });
}

$(document).on('keypress', '#new_message', function(e) {
  if(e.keyCode == 13 && chatChannel) {
    e.preventDefault();
    const user_id = $(this).find("input").val();
    const message = $(this).find("textarea").val()
    chatChannel.speak(message, user_id);
    $(this).trigger('reset');
  }
});

$(document).on('click', 'a[id^=user-id]', function(e) {
  e.preventDefault();
  var user_id = $(this).attr('id').replace(/user-id-/, '');
  var current_user_id = $(this).attr('class').replace(/current-user-/, '');

  $.ajax({
    dataType: 'JSON',
    method: 'GET',
    url: '/messages',
    data: {
      current_user_id: current_user_id,
      user_id: user_id
    },
    success: function(data) {
      $('#conversation').html(data.conversation_html);
      conversation_function(current_user_id, user_id);

      var conversation = $('#conversation').find("[data-user-id='" + user_id + "']");
      var messages_list = conversation.find('#messages-list');
      var height = messages_list[0].scrollHeight;
      messages_list.scrollTop(height);
    }
  });
});
