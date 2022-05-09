module RakeContentFile
  class Task < Rake::FileTask
    attr_accessor :source_file
    
    def initialize(task_name, app)
      super(task_name, app)
    end
    
    def needed?
      super.needed?
    end

    def content_hash
      s3_object.etag
    end
  end
end