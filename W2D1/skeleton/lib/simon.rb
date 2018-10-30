class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if !@game_over
      round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    seq.each {|el| print "#{el} "}
    sleep(2)
    system("clear")
  end

  def require_sequence
    comparison_array = []
    while comparison_array.length < @seq.length
      puts "Enter a color: red blue green yellow"
      color = gets.chomp
      comparison_array << color
      n = comparison_array.length
      if @seq[0...n] != comparison_array[0...n]
        return @game_over = true
      end
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Successful round"
  end

  def game_over_message
    puts "Game over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Simon.new
  game.play
end
