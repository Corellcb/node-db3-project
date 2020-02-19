const db = require('../data/db-config');

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}

function find() {
    return db('schemes');
}

function findById(id) {
    return db('schemes')
        .where({ id })
        .first()
}

function findSteps(scheme_id) {
    return db('steps')
        .join('schemes', 'schemes.id', 'steps.scheme_id')
        .select('steps.id', 'schemes.scheme_name', 'steps.instructions', 'steps.step_number')
        .where({ scheme_id })
}

function add(scheme) {
    return db('schemes').insert(scheme, 'id')
}

function update(changes, id) {
    return db('schemes')
        .where({ id: id })
        .update(changes);
}

function remove(id) {
    return db('schemes')
        .where({ id })
        .del()
}