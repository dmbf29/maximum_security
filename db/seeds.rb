Prison.destroy_all if Rails.env.development?

Prison.create!(
  name: "Alcatraz",
  banner_url: "https://i.ytimg.com/vi/vK6HsOreF7c/maxresdefault.jpg"
)

Prison.create!(
  name: "San Quentin State Prison",
  banner_url: "https://d3blhdga6ro23n.cloudfront.net/uploads/prison_photo/image/5730/web_CDCR_-_San_Quentin_State_Prison__SQ_.jpg"
)
