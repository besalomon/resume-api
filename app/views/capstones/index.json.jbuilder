json.array! @students.each do |student|
  json.id student.id
  json.name Capstone.name
  json.description Capstone.description
end