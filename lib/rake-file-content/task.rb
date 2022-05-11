require_relative "dependency_list"

module RakeContentFile
  class Task < Rake::FileTask
    attr_accessor :source_file
    
    def initialize(task_name, app)
      super(task_name, app)
    end
    
    def needed?
      dependent_contents_changed?
    end

    def execute(args=nil)
      super

      File.open(cache_file, "w") do |f|
        f << dep_list.serialize
      end
    end

    def dependent_contents_changed?
      return true if cached_dep_list.nil?

      dep_list != cached_dep_list
    end

    def cache_file
      name + ".content_hash"
    end

    private
    def dep_list
      @dep_list ||= make_dep_list
    end

    def cached_dep_list
      @cached_dep_list ||= read_cached_dep_list
    end

    def read_cached_dep_list
      return nil unless File.exist?(cache_file)

      data = File.open(cache_file).read

      DependencyList.deserialize(data)
    end
    
    def make_dep_list
      list = DependencyList.new

      dependent_content_tasks.each do |task|
        list.add(task.name, task.content_hash)
      end

      list
    end
    
    def dependent_content_tasks
      all_prerequisite_tasks.filter do |prereq|
        prereq_task = application[prereq, @scope]
        prereq_task.respond_to?(:content_hash)
      end
    end
  end
end