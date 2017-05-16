class Account
  def close
    @logger.account_closed(self)
  end

  def logger=(l)
    @logger = l
  end
end

describe Account do
  context "when closed" do
    it "logs an 'account closed' message" do
      logger = double()
      account = Account.new
      account.logger = logger

      expect(logger).to receive(:account_closed).with(account)

      account.close
    end
  end
end