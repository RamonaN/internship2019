(function() {
    'use strict';

    app.factory('AuthService', function($http) {
        var AuthService = {};
        AuthService.login = function(credentials) {
            return $http
                .get(`http://localhost:3000/credentials?username=${credentials.username}&password=${credentials.password}
                `, )
                .then(function(res) {
                    //Session.create(res.data.id,res.data.user.id,res.data.user.role);
                    return res.data;
                });
        };
        AuthService.register=function(signup){
            return $http
            .post(`http://localhost:3000/date?username=${signup.rusername}&email=${signup.email}&password=${signup.password}&repeatpassword=${signup.rpassword}`,)
            .then(function(response){
                return response.data
            }
            )
        }
        AuthService.isAuthenticated = function() {
            //return !!Session.userId;
            return true;
        };
        AuthService.isAuthorized = function(authorizedRoles) {
            /*  if(!angular.isArray(authorizedRoles)){
                 authorizedRoles=[authorizedRoles];
             }
             return (authService.isAuthenticated() && authorizedRoles.indexOf(Session.userRole)!== -1); */
        };

        return AuthService;
    });

}());