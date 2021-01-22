# frozen_string_literal: true

# The Game class attacks other players.
class Game
  def attack(player)
    player.receive_damage
  end
end
