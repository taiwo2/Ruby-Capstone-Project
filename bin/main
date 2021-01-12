#!/usr/bin/env ruby
require_relative '../lib/check.rb'

check = CheckForErrors.new('../sample.rb')
check.check_indentation
check.trailing_space
check.tag_error
check.end_error
check.empty_line_error

if check.errors.empty? && check.checker.err_msg.empty?
  puts 'No offenses'.colorize(:green) + ' detected'
else
  check.errors.uniq.each do |err|
    puts "#{check.checker.file_path.colorize(:blue)} : #{err.colorize(:red)}"
  end
end

puts check.checker.err_msg if check.checker.file_lines.empty?
