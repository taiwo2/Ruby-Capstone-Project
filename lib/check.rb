
class CheckForErrors
  attr_reader :checker, :errors
  def initialize(filePath)
    @checker = FileChecker.new(@filePath)
      @errors = []
      @keyword = %w[]
    end

  def TrailingSpace
    checker.file_lines.each_with_index do |ele,idx|
      if ele[-2] == ' ' && !ele.strip.empty?
        @errors << "line #{idx+1} :#{ele.size-1} : Errors Trailing Whitespace Detected" + " '#{ele.gsub(/\s*$/, '_')}'"
      end
    end
end