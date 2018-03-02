import "bootstrap";

const suscribe = () => {
  const id = document.getElementById('results').dataset.channel;
  App.messages = App.cable.subscriptions.create(
    { channel: "ResultNotificationsChannel",
      id: id
    },
    {  
    received: function(data) {
      const results = document.getElementById('results');
      results.insertAdjacentHTML('beforeend', data.message);
    },
  });
}
suscribe();
