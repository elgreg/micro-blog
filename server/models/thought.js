'use strict';

var loopbackContext = require('loopback-context');

module.exports = function(Thought) {
    Thought.observe('before save', function addAuthor(ctx, next) {
        if (ctx.isNewInstance) {
            ctx.instance.authorId = loopbackContext.getCurrentContext().get('accessToken').userId;
        }
        next();
    });
};
