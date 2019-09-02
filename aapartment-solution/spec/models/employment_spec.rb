# == Schema Information
#
# Table name: employments
#
#  id         :bigint           not null, primary key
#  tenant_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Employment, type: :model do
  subject(:employment) { Employment.first }

  it 'has a employee' do
    expect(employment.employee.name).to eq('Ralph')
  end

  it 'has skills' do
    expect(employment.skills.count > 0).to be_truthy
  end
end