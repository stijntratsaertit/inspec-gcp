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

title 'Test GCP google_resourcemanager_folder resource.'

folder = attribute('folder', default: {"display_name"=>"inspec-gcp-folder"})
gcp_organization_id = attribute(:gcp_organization_id, default: gcp_organization_id, description: 'The identifier of the organization that is the parent of this folder')
gcp_enable_privileged_resources = attribute(:gcp_enable_privileged_resources, default:0, description:'Flag to enable privileged resources requiring elevated privileges in GCP.')
control 'google_resourcemanager_folder-1.0' do
  impact 1.0
  title 'google_resourcemanager_folder resource test'

  only_if { gcp_enable_privileged_resources.to_i == 1 && gcp_organization_id != '' }
  describe.one do
    google_resourcemanager_folders(parent: "organizations/#{gcp_organization_id}").names.each do |name|
      describe google_resourcemanager_folder(name: name) do
        it { should exist }
        its('display_name') { should eq folder['display_name'] }
      end
    end
  end
end
