class TicTacToe
    #attr_accessor :count
    def initialize (board)
        @board = board
        @player
    end
    
    def print_board
        puts "\n #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
    
    def get_inputs
        puts "\nWELCOME TO THE TIC TAC TOE GAME"
        puts "==========================="
        puts "Which player do you prefer?"
        puts "1 for X or 2 for O"
        puts "==========================="
        rol = gets.chomp.to_i
        validate_rol (rol)
    end
    
    def validate_rol (rol)
        if rol == 1 || rol == 2
            @player = rol
            print_board
        else
            puts "Invalid option"
            get_inputs
        end
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
game.get_inputs