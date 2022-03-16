# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

title 'Test GCP google_access_context_manager_service_perimeters resource.'

gcp_organization_id = input(:gcp_organization_id, input: gcp_organization_id, description: 'The identifier of the organization that is the parent of the perimeter')
gcp_enable_privileged_resources = input(:gcp_enable_privileged_resources, input:0, description:'Flag to enable privileged resources requiring elevated privileges in GCP.')
service_perimeter = input('service_perimeter', input: {
  "name": "restrict_all",
  "title": "restrict_all",
  "restricted_service": "storage.googleapis.com",
  "policy_title": "policytitle"
}, description: 'Service perimeter definition')
control 'google_access_context_manager_service_perimeters-1.0' do
  impact 1.0
  title 'google_access_context_manager_service_perimeters resource test'

  only_if { gcp_enable_privileged_resources.to_i == 1 && gcp_organization_id != '' }

  describe.one do
    google_access_context_manager_access_policies(org_id: gcp_organization_id).names.each do |policy_name|
      describe google_access_context_manager_service_perimeters(policy_name: policy_name) do
        its('names') { should include service_perimeter['name'] }
        its('titles') { should include service_perimeter['title'] }
      end
    end
  end
end
