Polymer({
  is: "service-dock",
  ready: function() {
    let sd = this;
    sd.$http.get('/isLoggedIn')
      .then(function(data){
        sd.user = JSON.parse(data);
      })
      .catch(function(data){
        console.log(2, 'error', JSON.parse(data));
      });
  },
  properties: {
    user: {
      type: Object,
      value: {},
      notify: true
    },
    //
    //http
    //
    $http: {
      type: Object,
      value: function () {
        let core = {
          ajax : function (method, url, args) {

            let promise = new Promise( function (resolve, reject) {

              let client = new XMLHttpRequest(),
                  uri = url;

              client.open(method, uri);

              if (args && (method === 'POST' || method === 'PUT')) {
                client.setRequestHeader("Content-type", "application/json");
                client.send(JSON.stringify(args));
              } else {
                client.send();
              }

              client.onload = function () {
                if (this.status === 200) {
                  resolve(this.response);
                } else {
                  reject(this.statusText);
                }
              };

              client.onerror = function () {
                reject(this.statusText);
              };

            });
            return promise;
          }
        };

        return {
          'get':   function(url, args) { return core.ajax('GET', url, args); },
          'post':  function(url, args) { return core.ajax('POST', url, args); },
          'put':   function(url, args) { return core.ajax('PUT', url, args); },
          'delete':function(url, args) { return core.ajax('DELETE', url, args); }
        };
      }
    },
    //
    //VALIDATIONS
    //
    validations: {
      type: Object,
      value: {

        patterns: {
          name: '^[A-Za-z0-9_]{1,32}$',
          email: '',
          tel: '[0-9- ]{6,16}',
          password: '^[A-Za-z0-9_!@#$)(*&^%+=/.,]{2,32}'
        },

        messages: {
          name: {
            empty: 'Tienes que especificar un nombre', //"The name has an invalid format."
            invalid: 'El nombre tiene un formato invalido' //"You need to specify a name"
          },
          email: {
            empty: 'Tienes que especificar un email',
            invalid: 'El email es invalido' //"The email is invalid."
          },
          tel: {
            empty: 'Tienes que especificar un telefono',
            invalid: 'El tel es invalido'
          },
          password: {
            empty: "Please enter your password.",
            invalid: "The Password has an invalid format."
          }
        },

        validate: function (input) {
          let elem = input.target || input,
            sd = document.querySelector('service-dock'),
            message;

          if (elem.checkValidity()) {
            elem.nextElementSibling.innerHTML = "";
            elem.classList.remove('invalid');
          } else {
            if (elem.validity.valueMissing) {
              message = sd.validations.messages[elem.name].empty;
            } else if (elem.validity.patternMismatch) {
              message = sd.validations.messages[elem.name].invalid;
            } else {
              message = elem.validationMessage;
              console.log('unknown error');
            }
            elem.nextElementSibling.innerHTML = message;
            elem.classList.add('invalid');
          }
        }

      }
    }
  }

});