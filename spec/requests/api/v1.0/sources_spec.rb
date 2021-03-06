require_relative "shared_examples_for_index"

RSpec.describe("v1.0 - Sources") do
  include ::Spec::Support::TenantIdentity

  let(:headers)         { {"CONTENT_TYPE" => "application/json", "x-rh-identity" => identity} }
  let(:attributes)      { {"tenant_id" => tenant.id.to_s} }
  let(:collection_path) { "/api/v1.0/sources" }

  include_examples(
    "v1x0_test_index_and_subcollections",
    "sources",
    [
      :availabilities,
      :clusters,
      :containers,
      :container_groups,
      :container_images,
      :container_nodes,
      :container_projects,
      :container_templates,
      :datastores,
      :hosts,
      :ipaddresses,
      :network_adapters,
      :networks,
      :orchestration_stacks,
      :security_groups,
      :service_instances,
      :service_offerings,
      :service_plans,
      :source_regions,
      :subnets,
      :subscriptions,
      :vms,
      :volume_types,
      :volumes,
    ],
  )
end
