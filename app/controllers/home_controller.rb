class HomeController < ApplicationController
  def index

  end

  def export_users
    @users = User.order(:user_name).all.limit(50)
    respond_to do |format|
      format.csv { send_data @users.to_csv(['user_name', 'user_email', 'phone_number']) }
    end
  end

  def export_employees
    @employees = Employee.order(:name).all.limit(50)
    respond_to do |format|
      format.pdf { send_data @employees.to_pdf }
    end
  end

  def students
    @students = Student.order(:name).all.limit(50)
    StudentsMailer.students_record(@students).deliver
    flash[:notice] = "Mail has been sent successfully"
  end
end