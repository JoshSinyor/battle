# frozen_string_literal: true

# Each player is represented by an instance of the Player class.
class Player
  attr_reader :name

  DEFAULT_HP = 60

  attr_reader :hit_points

  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end
end
