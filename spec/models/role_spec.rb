# == Schema Information
#
# Table name: roles
#
#  created_at    :datetime
#  id            :integer          not null, primary key
#  name          :string
#  resource_id   :integer
#  resource_type :string
#  updated_at    :datetime
#
# Indexes
#
#  index_roles_on_name                                    (name)
#  index_roles_on_name_and_resource_type_and_resource_id  (name,resource_type,resource_id)
#

require 'rails_helper'

RSpec.describe Role, type: :model do
  it { should( have_and_belong_to_many(:users))}
  it { should( belong_to(:resource))}
end
