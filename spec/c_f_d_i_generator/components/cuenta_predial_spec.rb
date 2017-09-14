require "spec_helper"
require "c_f_d_i_generator/components/informacion_aduanera"

RSpec.describe CFDIGenerator::Components::InformacionAduanera do

  it { should respond_to(:numero) }

  let :record { CFDIGenerator::Components::InformacionAduanera.new }
  let :presence_error_message { "no puede ser nulo o estar vacio." }

  before do 
    record.valid?
  end

  context 'validate presence of' do
    describe '#numero' do
      it { expect(record.errors[:numero]).to include(presence_error_message) }
    end
  end
end