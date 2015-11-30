json.array!(@edit_profile_redirects) do |edit_profile_redirect|
  json.extract! edit_profile_redirect, :id
  json.url edit_profile_redirect_url(edit_profile_redirect, format: :json)
end
