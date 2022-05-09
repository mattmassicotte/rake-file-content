require 'test_helper'

class TaskTest < Minitest::Test
  def test_task_name
    task = RakeContentFile::Task.new("file", Rake.application)
    
    assert_equal "file", task.name
  end
end