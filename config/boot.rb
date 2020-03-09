ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
# OpenShift上での起動時にエラーが発生するためコメントアウト
# require 'bootsnap/setup' # Speed up boot time by caching expensive operations.
