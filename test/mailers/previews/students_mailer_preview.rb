# Preview all emails at http://localhost:3000/rails/mailers/students_mailer
class StudentsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/students_mailer/students_record
  def students_record
    StudentsMailer.students_record
  end

end
