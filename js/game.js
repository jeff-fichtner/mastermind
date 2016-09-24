// game model

function Game(solution) {
  var solution = solution;
  this.getSolution = function() { return solution };
  this.guesses = {};

  this.solved? = function() {
    if (Object.keys(guesses)[guesses.length - 1] == solution) {
      return true;
    };
    return false;
  };
};
