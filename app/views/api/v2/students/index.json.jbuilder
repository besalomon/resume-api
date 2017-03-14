json.array! @students.each do |student|
  json.id student.id
  json.first_name student.first_name
  json.last_name student.last_name
  json.email student.email
  json.phone_number student.phone_number
  json.short_bio student.short_bio
  json.photo student.photo
  json.twitter_handle student.twitter_handle
  json.github_url student.github_url
  json.blog_url student.blog_url
  json.resume_url student.resume_url

  json.experiences student.experiences.each do |experience|
    json.id experience.id
    json.job_title experience.job_title
    json.start_date experience.start_date
    json.end_date experience.end_date
    json.company_name experience.company_name
    json.details experience.details
  end

  json.educations student.educations.each do |education|
    json.id education.id
    json.start_date education.start_date
    json.end_date education.end_date
    json.degree education.degree
    json.university_name education.university_name
    json.details education.details
  end

  json.capstones student.capstones.each do |capstone|
    json.id capstone.id
    json.name capstone.name
    json.description capstone.description
    json.url capstone.url
    json.screenshot capstone.screenshot
  end

  json.skills student.skills.each do |skill|
    json.id skill.id
    json.name skill.name
  end

end