class LRUCache
  def initialize(cache_size = 3)
    @array = Array.new(cache_size)
    @cache = cache_size
  end

  def count
    @array.count
    #returns number of elements currently in cache
  end

  def add(el)
    if count == @cache
      if @array.include?(el)
        @array.delete(el)
        @array.push(el)
      else
        @array.shift
        @array.push(el)
      end
    else
      if @array.include?(el)
        @array.delete(el)
      else
        @array.push(el)
      end
    end
    #adds element to cache according to LRU principle
  end

  def show
    @array
    #shows the item in teh cache, with the LRU item first
  end
  private
  #helped methods
end

if __FILE__ == $PROGRAM_NAME

  johnny_cache = LRUCache.new(4)

 johnny_cache.add("I walk the line")
 johnny_cache.add(5)

 johnny_cache.count # => returns 2

 johnny_cache.add([1,2,3])
 johnny_cache.add(5)
 johnny_cache.add(-5)
 johnny_cache.add({a: 1, b: 2, c: 3})
 johnny_cache.add([1,2,3,4])
 johnny_cache.add("I walk the line")
 johnny_cache.add(:ring_of_fire)
 johnny_cache.add("I walk the line")
 johnny_cache.add({a: 1, b: 2, c: 3})

 p johnny_cache.show

end
