# frozen_string_literal: true

require "test_helper"
require "rake"

class DSLTest < Minitest::Test
  include RakeFileContent::DSL
  
  def test_file_content_task
    file_content 'file'
    
    task = Rake::Task['file']
    assert !task.nil?
    assert_equal 'file', task.name
  end
end
