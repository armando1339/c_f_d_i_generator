require "spec_helper"
require "c_f_d_i_generator/components/emisor"

RSpec.describe CFDIGenerator::Components::Emisor do

  it { should respond_to(:rfc) }
  it { should respond_to(:nombre) }
  it { should respond_to(:regimen_fiscal) }

  let :record { CFDIGenerator::Components::Emisor.new }
  let :presence_error_message { "no puede ser nulo o estar vacio." }
  let :inclusion_error_message { "no esta incluido en catalogo." }

  before do 
    record.valid?
  end

  context 'validate presence of' do
    describe '#rfc' do
      it { expect(record.errors[:rfc]).to include(presence_error_message) }
    end
    describe '#nombre' do
      it { expect(record.errors[:nombre]).to include(presence_error_message) }
    end
    describe '#regimen_fiscal' do
      it { expect(record.errors[:regimen_fiscal]).to include(presence_error_message) }
    end
  end

  context 'validate inclusion of' do
    describe '#regimen_fiscal' do
      it { expect(record.errors[:regimen_fiscal]).to include(inclusion_error_message) }
    end
  end
end