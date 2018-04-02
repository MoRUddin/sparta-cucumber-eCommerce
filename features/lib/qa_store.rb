require_relative "./pages/temp_email"
require_relative "./pages/qa_registration"
require_relative "./pages/qa_login"
require_relative "./pages/qa_purchase"

module QAStore
  def temp_email
    Temporary_Email.new
  end
  def qa_registration
    QARegistration.new
  end
  def qa_login
    QALogin.new
  end
  def qa_purchase
    QAPurchase.new
  end
end
