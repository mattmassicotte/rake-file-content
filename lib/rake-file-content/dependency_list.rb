module RakeContentFile
  class DependencyList
    attr_accessor :list

    def initialize
      @list = []
    end

    def ==(other)
      sorted_list == other.sorted_list
    end

    def sorted_list
      list.sort_by(&:first)
    end
    
    def add(name, hash)
      list << [name, hash]
    end

    def serialize
      data = ""

      sorted_list.each do |dep_name, hash|
        data << "#{dep_name}: #{hash}\n"
      end

      data
    end

    def self.deserialize(data)
      deps = self.new

      data.lines do |line|
        deps.list << line.chomp.split(": ")
      end
      
      deps
    end
  end
end
