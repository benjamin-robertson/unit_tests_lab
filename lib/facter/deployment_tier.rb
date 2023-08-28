# frozen_string_literal: true

Facter.add(:deployment_tier) do
  # https://puppet.com/docs/puppet/latest/fact_overview.html
  setcode do
    hostname = Facter.value(:hostname).downcase
    case hostname
      when /^\w+-\w+-de/
        'development'
      when /^\w+-\w+-pr/
        'production'
      else
        nil
    end
  end
end
