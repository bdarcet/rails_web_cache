# frozen_string_literal: true

module RailsWebCache
  class RedisCacheStore < Base
    def keys_size
      redis.dbsize
    end

    def keys
      redis.keys
    end

    def read(key)
      return unless type(key) == 'string'
      cache.read(key) if key
    end

    def search(query = '')
      redis.scan_each(match: "*#{query.downcase}*").to_a if query
    end

    def entry(key, options = {})
      return unless key
      return unless type(key) == 'string'
      entry = read_entry(key, options)
      return unless entry
      RailsWebCache::Entry.new(entry)
    end

    private

    def redis
      @redis ||= cache.redis
    end

    def type(key)
      redis.type(key)
    end
  end
end
