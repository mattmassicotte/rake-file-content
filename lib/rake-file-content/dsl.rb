require 'rake'

module RakeFileContent
  module DSL
    include Rake::DSL

    def file_content(src_file, *args, &block)
      file src_file
    end

  end
end

extend RakeFileContent::DSL