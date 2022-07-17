import axios from 'axios';

axios.interceptors.request.use(function(config) {
    const auth_token = localStorage.getItem('token');
    if(auth_token) {
      config.headers.Authorization = `Token ${auth_token}`;
    }
    return config;
}, function(err) {
    return Promise.reject(err);
});
