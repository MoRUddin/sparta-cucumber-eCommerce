require_relative "./pages/temp_email"
require_relative "./pages/qa_registration"
require_relative "./pages/qa_login"

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
end
