require 'sinatra'
require 'axlsx'
Dir[File.join(__dir__, 'lib', '*.rb')].each { |file| require file }
