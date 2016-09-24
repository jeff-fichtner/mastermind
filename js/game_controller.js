function GameController() {
  var game = new Game(SolutionGenerator.generate)

  this.calculateHint = function(guess) {
    var hint = [];
    var guessCopy = []; for (i in guess) { guessCopy[i] = guess[i]; }
    var length = game.getSolution.length - 1;

    for (i in length) {
      if (game.getSolution[i] == guess[i]) {
        hint.push('a');
        guessCopy[i] = null;
      };
    };

    for (i in length) {
      if (game.getSolution[i].includes(guessCopy[i])) {
        hint.push('b');
      };
    };

    return hint;
  };

};

// process.stdin.resume();
process.stdin.setEncoding('utf8');
var util = require('util');

var text = process.stdin.on('data', function (text) {
  console.log('received data:', util.inspect(text));
  // if (text === 'quit\n') {
    done();
  // }
});

function done() {
  console.log('Now that process.stdin is paused, there is nothing more to do.');
  process.exit();
}

// console.log(text)

