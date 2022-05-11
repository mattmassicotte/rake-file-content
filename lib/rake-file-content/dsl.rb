require 'rake'

module RakeFileContent
  module DSL
    include Rake::DSL

    def file_content(*args, &block)
      RakeContentFile::Task.define_task(*args, &block)
    end

  end
end

extend RakeFileContent::DSL