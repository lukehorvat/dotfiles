#!/usr/bin/ruby

puts "Loading irb (config=#{__FILE__}, ruby=#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL})..."

require 'rubygems'

# General irb improvements
require 'irb/completion'
require 'irb/ext/save-history'
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
IRB.conf[:AUTO_INDENT] = true

# Load wirble for nice console coloring (pre-req: gem install wirble)
begin
  require 'wirble'
  Wirble.init
  Wirble.colorize
rescue LoadError
end

# Load hirb for tabular views of objects (pre-req: gem install hirb)
begin
  require 'hirb'
  Hirb.enable
rescue LoadError
end

# Load awesome_print for pretty-printed objects (pre-req: gem install awesome_print)
# Example: ap User.last
begin
  require 'awesome_print'
rescue LoadError
end

# Rails console improvements
if (ENV['RAILS_ENV'] || defined? Rails)

  rails_root = File.basename(Dir.pwd)
  IRB.conf[:PROMPT] ||= {}
  IRB.conf[:PROMPT][:RAILS] = {
    :PROMPT_I => "#{rails_root}> ",
    :PROMPT_S => "#{rails_root}* ",
    :PROMPT_C => "#{rails_root}? ",
    :RETURN   => "=> %s\n"
  }
  IRB.conf[:PROMPT_MODE] = :RAILS

  class Object
    # List all ActiveRecord model associations
    # Example: User.associations
    def associations
      reflect_on_all_associations.map { |assoc| assoc.name }
    end
  end

end
