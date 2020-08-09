#!/usr/bin/env ruby
#


# Example application to demonstrate some basic Ruby features

# Version 1: read arguments, and look for a file-type handler for processing.
# If none exists, look for a default app in the app map
class Launcher

  # Create an instance of this class with the file-type -> app
  # mapping hash
  def initialize app_map 
    @app_map = app_map
  end

  # Execute the given file using he associate app
  def run file
    application = select_app file
    system "#{application} #{file}" 
  end

  # Given a file, look up the matcing application
  def select_app file
    ftype = file_type(file).downcase
    @app_map[ ftype ]
  end

  # Return the part of the file name string after the last '.'
  def file_type file
    File.extname( file ).gsub  /^\./, ''
  end

end


if __FILE__ == $0
  require "test/unit"

  class TestLauncherTC < Test::Unit::TestCase

    def teardown
    end

    def setup
      @app_map = {
     'html' => 'firefox',
     'txt' => 'gvim'
      }

    end

    def test_create
      l = Launcher.new @app_map
      assert_equal Launcher, l.class
    end

    def test_select_app
      app_map = {
     'html' => 'firefox',
     'txt' => 'gvim'
      }

      l = Launcher.new app_map 
      assert_equal 'firefox', l.select_app( 'foo.html' )

    end

    def test_get_file_extension
      l = Launcher.new @app_map
      base = 'foo'
      ext = 'html'
      filename = "#{base}.#{ext}"
      assert_equal ext, l.file_type(filename)
    end


  end
end
