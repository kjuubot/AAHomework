class LRUCache
    def initialize(max)
        @cache = []
        @max_length = max
    end

    def count
      # returns number of elements currently in cache
        @cache.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      @cache << el

      @cache.shift if @cache.length > max_length
    end

    def show
      # shows the items in the cache, with the LRU item first
      @cache
    end

    private
    # helper methods go here!
    attr_accessor :cache
    attr_reader :max_length

  end