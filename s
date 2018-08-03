[1mdiff --git a/server/tests/server.test.js b/server/tests/server.test.js[m
[1mindex f6289ce..7b7ab10 100644[m
[1m--- a/server/tests/server.test.js[m
[1m+++ b/server/tests/server.test.js[m
[36m@@ -285,4 +285,23 @@[m [mdescribe('POST /users/login', () => {[m
                 }).catch((e) => done(e));[m
             })[m
     });[m
[32m+[m[32m})[m
[32m+[m
[32m+[m[32mdescribe('DELETE /users/me/token', () => {[m
[32m+[m[32m    it('should remove auth token on logout', (done) => {[m
[32m+[m[32m        request(app)[m
[32m+[m[32m            .delete('/users/me/token')[m
[32m+[m[32m            .set('x-auth', users[0].tokens[0].token)[m
[32m+[m[32m            .expect(200)[m
[32m+[m[32m            .end((err, res) => {[m
[32m+[m[32m                if(err) {[m
[32m+[m[32m                    return done(err);[m
[32m+[m[32m                }[m
[32m+[m
[32m+[m[32m                User.findById(users[0]._id).then((user) => {[m
[32m+[m[32m                    expect(user.tokens.length).toBe(0);[m
[32m+[m[32m                    done();[m
[32m+[m[32m                }).catch((e) => done(e));[m
[32m+[m[32m            })[m
[32m+[m[32m    })[m
 })[m
\ No newline at end of file[m
