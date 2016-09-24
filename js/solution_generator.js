// solution generator

function SolutionGenerator() {
  this.generate = function() {
    var colors = ["yellow", "blue", "green", "red", "purple", "orange"];
    var solution = [];

    while (solution.length < 4) {
      var pick = Math.floor(Math.random() * colors.length);
      solution.push(colors.splice(pick, 1)[0]);
    }

    return solution;
  };
};
