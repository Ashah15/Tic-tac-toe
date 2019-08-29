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

        puts "#{@player}, please enter the row:"
        input_row = gets
        return false 

         puts "#{@player}, please enter the column:"
        input_column = gets
        return false 

        (input_row, input_column)




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
    
    def valid_move?(input_row, input_column)
        @board[input_row.-1][input_column.-1].strip.empty?
       
    end

    def validate_move
        case turn
        when 1 puts "X"
        when 2 puts "int"
    end        
    
    def update_board
        @board[inputs[0]-1][inputs[1].-1] = @player

    end
    
    def play
        inputs = get_inputs
        update_board(inputs)

    end
    
    def game_over
    end
end

game = TicTacToe.new(["1","2","3","4","5","6","7","8","9"])
game.get_inputs