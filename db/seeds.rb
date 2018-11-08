Prison.destroy_all if Rails.env.development?

Prison.create!(
  name: 'Alcatraz',
  banner_url: 'https://i.ytimg.com/vi/vK6HsOreF7c/maxresdefault.jpg'
)

Prison.create!(
  name: 'San Quentin State Prison',
  banner_url: 'https://d3blhdga6ro23n.cloudfront.net/uploads/prison_photo/image/5730/web_CDCR_-_San_Quentin_State_Prison__SQ_.jpg'
)

Criminal.destroy_all if Rails.env.development?

Criminal.create!(
  name: 'Ted Bundy',
  picture_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Ted_Bundy_headshot.jpg/220px-Ted_Bundy_headshot.jpg',
  prison: Prison.first
)

Criminal.create!(
  name: 'John Wayne Gacy',
  picture_url: 'https://cdn2us.denofgeek.com/sites/denofgeekus/files/styles/main_wide/public/2017/10/john-wayne-gacy-killer-clown-20007790-1280x0.png?itok=Z9hp1iz5',
  prison: Prison.first
)

Criminal.create!(
  name: 'Charles Manson',
  picture_url: 'https://www.alcatrazeast.com/wp-content/uploads/2017/06/Charles-Manson-and-the-Manson-Family-2.jpg',
  prison: Prison.first
)


tag_names = %w(cannibal juggling strangling arson murder jaywalking dismembering)

Tag.destroy_all
tag_names.each do |tag_name|
  Tag.create!(name: tag_name)
end








