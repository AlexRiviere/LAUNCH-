require "minitest/autorun"

require_relative "transaction"

class TransactionTest < MiniTest::Test
  def setup
    @transaction = Transaction.new(50)
  end
  
  def test_prompt_for_payment
    input = StringIO.new("100\n")
    out, err = capture_io do
      @transaction.prompt_for_payment(input: input)
    end
    assert_equal(100, @transaction.amount_paid)
  end
end