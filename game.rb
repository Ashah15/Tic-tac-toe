class TicTacToe
    
    def initialize (board)
        @board = board
        @rol
        @draw
    end
    
    def print_board
        puts "START GAME!"
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
        @rol = gets.chomp.to_i
        validate_rol
    end
    
    def validate_rol
        if @rol == 1 || @rol == 2
            print_board
            play
        else
            puts "Invalid option"
            get_inputs
        end
    end
    
    def valid_move? 
        if @rol == 1
            @draw = "X"
        else
            @draw = "O"
        end
        if @board[@cell-1] == "X" || @board[@cell-1] == "O"
            puts "The cell is already taken"
            play
        else
            case @cell
                when 1
                    @board[0] = @draw
                when 2
                    @board[1] = @draw
                when 3
                    @board[2] = @draw
                when 4
                    @board[3] = @draw
                when 5
                    @board[4] = @draw
                when 6
                    @board[5] = @draw
                when 7
                    @board[6] = @draw
                when 8
                    @board[7] = @draw
                when 9
                    @board[8] = @draw
                else
                    puts "Invalid Option, please try again!"
                play
            end
        end
        winner?
        game_over?
    end  
    
    def play
        puts "\nPlayer #{@rol} is playing!"
        puts "Select a number in the cell"
        @cell = gets.chomp.to_i
        valid_move?
    end
    
    def winner?
        
        #Horizontal Test
        
        if @board[0] === @draw && @board[1] === @draw && @board[2] === @draw
            @board[0] = "-" 
            @board[1] = "-" 
            @board[2] = "-"
            print_board
            puts "\nPlayer #{@rol} Wins"
            again?
        elsif @board[3] === @draw && @board[4] === @draw && @board[5] === @draw
            @board[3] = "-" 
            @board[4] = "-" 
            @board[5] = "-"
            print_board
            puts "\nPlayer #{@rol} Wins"
            again?
        elsif @board[6] === @draw && @board[7] === @draw && @board[8] === @draw
            @board[6] = "-" 
            @board[7] = "-" 
            @board[8] = "-"
            print_board
            puts "\nPlayer #{@rol} Wins"
            again?
        end
        
        #Vertical Test
        
        if @board[0] === @draw && @board[3] === @draw && @board[6] === @draw
            @board[0] = "|" 
            @board[3] = "|" 
            @board[6] = "|"
            print_board
            puts "\nPlayer #{@rol} Wins"
            again?
        elsif @board[1] === @draw && @board[4] === @draw && @board[7] === @draw
            @board[1] = "|" 
            @board[4] = "|" 
            @board[7] = "|"
            print_board
            puts "\nPlayer #{@rol} Wins"
            again?
        elsif @board[2] === @draw && @board[5] === @draw && @board[8] === @draw
            @board[2] = "|" 
            @board[5] = "|" 
            @board[8] = "|"
            print_board
            puts "\nPlayer #{@rol} Wins"
            again?
        end
        
        #Diagonal 1 Test
        
        if @board[0] === @draw && @board[4] === @draw && @board[8] === @draw
            @board[0] = "\\" 
            @board[4] = "\\" 
            @board[8] = "\\"
            print_board
            puts "\nPlayer #{@rol} Wins"
            again?
        end
        
        #Diagonal 2 Test
        
        if @board[2] === @draw && @board[4] === @draw && @board[6] === @draw
            @board[2] = "/" 
            @board[4] = "/" 
            @board[6] = "/"
            print_board
            puts "\nPlayer #{@rol} Wins"
            again?
        end
    end
    
    def game_over?
        empty = 0
        @board.each do |cell| 
            empty += 1 if cell == "X" || cell == "O"
        end
        if empty == 9
            print_board
            puts "Game Over"
            again?
        elsif winner?
            print_board
        else
            if @rol == 2 
                @rol = 1 
            else
                @rol=2 
            end
            print_board
            play
        end
    end
    
    def again?
        puts "##################"
        puts "#PLAY AGAIN? (y/n)"
        puts "##################"
        again = gets.chomp
            if again == "y" 
                @board=["1","2","3","4","5","6","7","8","9"]
                get_inputs 
            else 
                puts "Adios Amigo!" 
                exit
            end
    end
end

game = TicTacToe.new(["1","2","3","4","5","6","7","8","9"])
game.get_inputs