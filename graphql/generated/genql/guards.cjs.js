var Query_possibleTypes = ['Query'];
module.exports.isQuery = function (obj) {
  if (!obj || !obj.__typename)
    throw new Error('__typename is missing in "isQuery"');
  return Query_possibleTypes.includes(obj.__typename);
};

var test_results_possibleTypes = ['test_results'];
module.exports.istest_results = function (obj) {
  if (!obj || !obj.__typename)
    throw new Error('__typename is missing in "istest_results"');
  return test_results_possibleTypes.includes(obj.__typename);
};

var users_possibleTypes = ['users'];
module.exports.isusers = function (obj) {
  if (!obj || !obj.__typename)
    throw new Error('__typename is missing in "isusers"');
  return users_possibleTypes.includes(obj.__typename);
};
