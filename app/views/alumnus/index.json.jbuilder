json.array!(@alumnus) do |alumnu|
  json.extract! alumnu, :id, :first_name, :last_name, :email, :phone, :term, :school, :current_city, :state, :current_role, :current_organization, :permission_to_share_contactinfo, :do_not_contact
  json.url alumnu_url(alumnu, format: :json)
end
