json.extract! teacher, :id, :lastname, :firstname, :address, :city, :state, :zip, :email, :phone, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
