class TicTacToe
    #attr_accessor :count
    def initialize (board)
        @board = board
    end
    
    def print_board
        puts "\n #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
    
    def get_inputs
        puts "Which player do you prefer?"
        rol = gets.chomp
    end
    
    def valid_move?
    end
    
    def update_board
    end
    
    def play
    end
    
    def game_over
    end
end

game = TicTacToe.new(["1","2","3","4","5","6","7","8","9"])
game.print_board