require 'digest/md5'

module Rake
  class FileTask
    def content_hash
      Digest::MD5.hexdigest(File.read(name))
    rescue
      nil
    end
  end
end