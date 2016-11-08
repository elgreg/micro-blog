'use strict';

var loopbackContext = require('loopback-context');

module.exports = function(Thought) {
    Thought.observe('before save', function addAuthor(ctx, next) {
        if (ctx.isNewInstance) {
            var token = loopbackContext.getCurrentContext().get('accessToken');
            ctx.instance.authorId = ((token) ? token.userId : null);
        }
        next();
    });
};
