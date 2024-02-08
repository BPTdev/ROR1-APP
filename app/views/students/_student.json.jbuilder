json.extract! student, :id, :lastname, :firstname, :address, :city, :state, :zip, :email, :phone, :created_at, :updated_at
json.url student_url(student, format: :json)
