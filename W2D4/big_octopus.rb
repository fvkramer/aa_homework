FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus
  longest_fish = ''
  (0..FISH.length-2).each do |i|
    (1+i..FISH.length-1).each do |j|
      longest_fish = FISH[i] if FISH[i].length > FISH[j].length
    end
  end
end

class Array
  #this should look familiar
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    mid = count / 2
    sorted_left = self.take(mid).merge_sort(&prc)
    sorted_right = self.drop(mid).merge_sort(&prc)

    merge(sorted_left, sorted_right, &prc)
  end

  def merge(left, right, &prc)
    merged_aray = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      else
        merged << right.shift
      end
    end

    merged_array + left + right
  end
end

def dominant_octopus
  FISH.merge_sort[0]
end

def clever_octopus
  longest = ""
  FISH.each do |el|
    longest = el if el.length > longest.length
  end
  longest
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |dir, idx|
    return idx if dir == direction
  end
end


new_tiles = {
  "up"=>0,
  "right-up"=>1,
  "right"=>2,
  "right-down"=>3,
  "down"=>4,
  "left-down"=>5,
  "left"=>6,
  "left-up"=>7
}

def fast_dance(direction, new_tiles)
  new_tiles[direction]
end
