class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
	p1 = player1[1]
	p2 = player2[1]
	

	if ((p1 == 'P' || p1 == 'R' || p1 == 'S') && (p2 == 'P' || p2 ==  'R' || p2 ==  'S'))

		if p1 == 'P'
			case p2
			when 'P'
				return player1
			when 'R'
				return player1
			else #'S'
				return player2
			end 
		

		elsif p1 == 'R'

			case p2
			when 'P'
				return player2
			when 'R'
				return player1
			else #'S'
				return player1
			end
	
		elsif  p1 == 'S'	
			case p2
			when 'P'
				return player1
			when 'R'
				return player2
			else #'S'
				return player1
			end
		
		end
	
	
	else 
	 	raise NoSuchStrategyError, "Strategy must be one of R,P,S"
	end


  end

  def self.tournament_winner(tournament)

	if !(tournament[0][0].is_a?(String))
		return winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
		
	else
		return winner(tournament[0], tournament[1])
	end
	
  end

end
