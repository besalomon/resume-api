json.array! @capstones.each do |capstone|
  json.id capstone.id
  json.student_id capstone.student_id
  json.name capstone.name
  json.url capstone.url
  json.description capstone.description
  json.screenshot capstone.screenshot
end