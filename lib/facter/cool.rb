# frozen_string_literal: true

Facter.add(:cool) do
  # https://puppet.com/docs/puppet/latest/fact_overview.html
  setcode do
    myvalue = Facter.value(:cloud_properties)

    deployment_id = myvalue['host']['grouping']

    deployment_id
  end
end
