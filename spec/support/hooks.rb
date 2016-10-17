require_relative 'aruba'
Aruba.configure do |config|
  config.before :command do |cmd|
    # puts "before the run of `#{cmd}`"
  end
end
