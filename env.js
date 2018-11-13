'use strict';

module.exports = {
    env: 'docker',
    https: false,
    port: process.env.PORT || 3000,
    mongo: {
        uri: process.env.MONGO_URI
    }
};