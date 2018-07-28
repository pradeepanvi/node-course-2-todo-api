const {ObjectID} = require('mongodb');

const {mongoose} = require('./../server/db/mongoose');
const {Todo} = require('./../server/models/todo');

var id = '5b5c3bc275a50bf6b79f3c7b';

if(!ObjectID.isValid(id)){
    console.log('ID not valid');
}

Todo.find({
    _id: id
}).then((todos) => {
    console.log('Todos', todos);
})

Todo.findOne({
    _id: id
}).then((todo) => {
    console.log('Todo', todo);
})

Todo.findById(id).then((todo) => {
    if(!todo) {
        return console.log('Id not found')
    }
    console.log('Todo By Id', todo);
}).catch((e) => console.log(e));

User.findById('5b5c3bc275a50bf6b79f3c7b').then((user) => {
    if(!user) {
        return console.log('Unable to find user');
    }

    console.log(JSON.stringify(user, undefined, 2));
}, (e) => {
    console.log(e);
})