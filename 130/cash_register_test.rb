require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup
    @register = CashRegister.new(1000)
    @transaction = Transaction.new(50)
    @transaction.amount_paid = 100
  end
  
  def test_accept_money
    @register.accept_money(@transaction)
    assert_equal(1100, @register.total_money)
  end
  
  def test_change
    assert_equal(50, @register.change(@transaction))
  end
  
  def test_give_receipt
    # out, err = capture_io do
    #   @register.give_receipt(@transaction)
    # end
    # assert_equal("You've paid $50.", out)
    
    assert_output("You've paid $50.\n") { @register.give_receipt(@transaction)}
  end
end