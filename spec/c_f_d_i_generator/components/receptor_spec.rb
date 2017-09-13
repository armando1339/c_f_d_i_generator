require "spec_helper"
require "c_f_d_i_generator/components/receptor"

RSpec.describe CFDIGenerator::Components::Receptor do

  it { should respond_to(:rfc) }
  it { should respond_to(:nombre) }
  it { should respond_to(:residencia_fiscal) }
  it { should respond_to(:num_reg_id_trib) }
  it { should respond_to(:uso_c_f_d_i) }

  let :record { CFDIGenerator::Components::Receptor.new }
  let :presence_error_message { "no puede ser nulo o estar vacio." }
  let :numericality_error_message { "no es un numero." }
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
    describe '#residencia_fiscal' do
      it { expect(record.errors[:residencia_fiscal]).to include(presence_error_message) }
    end
    describe '#num_reg_id_trib' do
      it { expect(record.errors[:num_reg_id_trib]).to include(presence_error_message) }
    end
    describe '#uso_c_f_d_i' do
      it { expect(record.errors[:uso_c_f_d_i]).to include(presence_error_message) }
    end
  end

  context 'validate numericality of' do
    describe '#num_reg_id_trib' do
      it { expect(record.errors[:num_reg_id_trib]).to include(numericality_error_message) }
    end
  end

  context 'validate inclusion of' do
    describe '#residencia_fiscal' do
      it { expect(record.errors[:residencia_fiscal]).to include(inclusion_error_message) }
    end
    describe '#uso_c_f_d_i' do
      it { expect(record.errors[:uso_c_f_d_i]).to include(inclusion_error_message) }
    end
  end
end