# This fact overrides ec2_userdata with nil
# to avoid having a fact with binary content
Facter.add(:ec2_userdata) do
  has_weight 100
  setcode do
    nil
  end
end
