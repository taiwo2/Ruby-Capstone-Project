require_relative '../lib/check.rb'

describe CheckForErrors do
  let(:checker) { CheckForErrors.new('sample.rb') }

  describe '#trailing_space' do
    it 'should return  trailing space error on line 3 ' do
      checker.trailing_space
      expect(checker.errors[0]).to eql('line 3:20 Trailing Whitespace Detected ')
    end
  end

  describe '#check_indentation' do
    it 'should return indentation space error on line 4' do
      checker.check_indentation
      expect(checker.errors[0]).to eql('line:4 IndentationWidth: Use 2 spaces for indentation.')
    end
  end

  describe '#tag_error' do
    it "returns missing/unexpected tags eg '( )', '[ ]', and '{ }'" do
      checker.tag_error
      expect(checker.errors[0]).to eql("line:3 Lint/Syntax: Unexpected/Missing token ']' Square Bracket")
    end
  end

  describe '#end_error' do
    it 'returns missing/unexpected end' do
      checker.end_error
      expect(checker.errors[0]).to eql("Lint/Syntax: Missing 'end'")
    end
  end

  describe '#empty_line_error' do
    it 'returns empty line error' do
      checker.empty_line_error
      expect(checker.errors[0]).to eql('line:11 Extra empty line detected at block body end')
    end
  end

  describe '#check_end_empty_line' do
    it 'should return end errors' do
      checker.empty_line_error
      expect(checker.errors[0]).to eql('line:11 Extra empty line detected at block body end')
    end
  end
end
