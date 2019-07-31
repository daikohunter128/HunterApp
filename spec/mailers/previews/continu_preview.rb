# Preview all emails at http://localhost:3000/rails/mailers/continu
class ContinuPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/continu/thank_you
  def thank_you
    ContinuMailer.thank_you
  end

end
