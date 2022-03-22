require 'minitest/autorun'

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @file = File.open("sample.txt")
    @content = @file.read
    @text = Text.new(@content)
  end
  
  def test_swap
    actual = @text.swap("a", "e")
    expect = <<~EXPECT
      Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
      Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
      quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
      nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
      dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
      et verius meuris, et pheretre mi.
      EXPECT
    
    assert_equal(expect.chomp, actual)
  end
  
  def test_word_count
    actual = @text.word_count
    assert_equal(72, actual)
  end
  
  def teardown
    @file.close
    puts "This file has been closed: #{@file.closed?}"
  end
end