import "bootstrap";

const suscribe = () => {
  App.messages = App.cable.subscriptions.create('ResultNotificationsChannel', {  
    received: function(data) {
      const results = document.getElementById('results')
      results.insertAdjacentHTML('beforeend', data.message)
    },
  });
}

suscribe();
