const db = require('../data/db-config')

module.exports = {
    find,
    findById,
    findSteps,
    add,
    addstep,
    update,
    remove,
  };

  function find() {
        return db('schemes');
  }

  function findById(id) {
    return db('schemes').where("id", id).first();
  }

  function findSteps(id){
    return db('steps').where("id" , id)
  }

  function add(schemeData){
    return db('schemes')
    .insert(schemeData, "id")
    .then(ids => {
      return findById(ids[0]);
    });
  }

  function addstep(stepData, id){
    return db('schemes')
    .insert(stepData, "id")
    .then(ids => {
      return findById(ids[0]);
    });
  }

  function update(changes, id){
    return db('schemes').where({ id }).update(changes);
  }

  function remove(id){
    return db('schemes').where({ id }).del();
  }