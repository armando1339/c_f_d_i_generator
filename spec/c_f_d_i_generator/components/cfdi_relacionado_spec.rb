require "spec_helper"
require "c_f_d_i_generator/components/cfdi_relacionado"

RSpec.describe CFDIGenerator::Components::CfdiRelacionado do

  it { should respond_to(:uuid) }

  let :record { CFDIGenerator::Components::CfdiRelacionado.new }
  let :presence_error_message { "no puede ser nulo o estar vacio." }

  before do 
    record.valid?
  end

  context 'validate presence of' do
    describe '#uuid' do
      it { expect(record.errors[:uuid]).to include(presence_error_message) }
    end
  end
end