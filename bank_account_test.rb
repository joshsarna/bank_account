require 'minitest/autorun'
require_relative 'bank_account'

class BankAccountTest < MiniTest::Unit::TestCase

  def test_bank_initialization_with_0_balance
    # skip
    account = BankAccount.new
    assert_equal account.check_balance, "Your balance is $0"
  end

  def test_bank_initialization_with_non0_balance
    # skip
    account = BankAccount.new(100)
    assert_equal account.check_balance, "Your balance is $100"
  end

  def test_deposit
    # skip
    account = BankAccount.new(100)
    account.deposit(50)
    assert_equal account.check_balance, "Your balance is $150"
  end

  def test_withdrawal_of_legal_amount
    # skip
    account = BankAccount.new(100)
    assert_equal account.withdraw(70), 30
    assert_equal account.check_balance, "Your balance is $30"
  end

  def test_withdrawal_of_illegal_amount
    # skip
    account = BankAccount.new(100)
    assert_nil account.withdraw(110)
    assert_equal account.check_balance, "Your balance is $100"
  end

  def test_legal_transfer
    # skip
    account1 = BankAccount.new(100)
    account2 = BankAccount.new
    account1.transfer_to(account2, 40)
    assert_equal account1.check_balance, "Your balance is $60"
    assert_equal account2.check_balance, "Your balance is $40"
  end

  def test_illegal_transfer
    # skip
    account1 = BankAccount.new(100)
    account2 = BankAccount.new()
    assert_nil account1.transfer_to(account2, 120)
    assert_equal account1.check_balance, "Your balance is $100"
    assert_equal account2.check_balance, "Your balance is $0"
  end

end