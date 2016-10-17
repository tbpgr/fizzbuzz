require 'thor'

# Fizzbuzz::Models
module Fizzbuzz
  # CLI
  #
  # FizzBuzzのコマンドライン
  class CLI < Thor
    class_option :help, type: :boolean, aliases: '-h', desc: 'help message.'
    class_option :version, type: :boolean, desc: 'version'
    class_option :debug, type: :boolean, aliases: '-d', desc: 'debug mode'

    desc 'fizzbuzz', 'Get fizzbuzz result from limit number'
    def fizzbuzz(limit)
      print Fizzbuzz.fizzbuzz(limit).join(',')
      exit
    rescue => e
      output_error_if_debug_mode(e)
      exit(false)
    end

    desc 'version', 'version'
    def version
      puts Fizzbuzz::VERSION
    end

    private

    def output_error_if_debug_mode(e)
      return unless options[:debug]
      STDERR.puts(e.message)
      STDERR.puts(e.backtrace)
    end
  end
end
