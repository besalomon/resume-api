json.array! @students.each do |student|
  json.id student.id
  json.start_date Education.start_date
  json.end_date Education.end_date
  json.degree Education.degree
  json.university_name Education.university_name
  
end