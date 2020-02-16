class View {
  constructor(game, $el) {
    this.game = game;
    this.$el = $el;
    this.setupBoard();
  }


  bindEvents() {
    // Where we call make move function
    
    $(this.$el).on("click", (e) => { this.makeMove($(e.target));}); 


  }

  makeMove($square) {
    // calling play move
    // Look at game class to see game logic
    // 

    let pos = $square.attr('id');
    try {
      $square.html(this.game.currentPlayer);
      $square.addClass(this.game.currentPlayer);
      this.game.playMove(pos.split("").map(Number));
    }

    catch(err) {
      alert("Invalid move! Try again.")
    }

    if (this.game.isOver()){
      if (this.game.winner() === 'x') {
       
        $('.x').attr('id', 'winner');
        $('.o').attr('id', 'loser');

      } else if (this.game.winner() === 'o') {
        
        $('.o').attr('id', 'winner');
        $('.x').attr('id', 'loser');
      } else {
        
        $('.o').attr('id', 'loser');
        $('.x').attr('id', 'loser');

      }

      

      $(this.$el).off("click");


    }

  }

  setupBoard() {
    let str = "<ul><li id='00'></li><li id='01'></li><li id='02'></li><li id='10'></li><li id='11'></li><li id='12'></li><li id='20'></li><li id='21'></li><li id='22'></li></ul>";
    this.$el.append(str);
  }
}


module.exports = View;
