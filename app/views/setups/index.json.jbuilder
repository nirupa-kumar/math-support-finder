json.array!(@setups) do |setup|
  json.extract! setup, :id, :platform_version_id, :renderer_version_id, :browser_reader_version_id, :assistive_technology_version_id, :file_format_id, :workflow_status_id
  json.url setup_url(setup, file_format: :json)
end
