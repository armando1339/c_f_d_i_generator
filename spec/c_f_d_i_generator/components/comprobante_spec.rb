require "spec_helper"
require "c_f_d_i_generator/components/comprobante"

RSpec.describe CFDIGenerator::Components::Comprobante do

  it { should respond_to(:serie) }
  it { should respond_to(:folio) }
  it { should respond_to(:fecha) }
  it { should respond_to(:sello) }
  it { should respond_to(:forma_pago) }
  it { should respond_to(:no_certificado) }
  it { should respond_to(:certificado) }
  it { should respond_to(:condiciones_de_pago) }
  it { should respond_to(:subtotal) }
  it { should respond_to(:descuento) }
  it { should respond_to(:moneda) }
  it { should respond_to(:tipo_cambio) }
  it { should respond_to(:total) }
  it { should respond_to(:tipo_de_comprobante) }
  it { should respond_to(:metodo_pago) }
  it { should respond_to(:lugar_expedicion) }
  it { should respond_to(:confirmacion) }

  let :record { CFDIGenerator::Components::Comprobante.new }
  let :presence_error_message { "no puede ser nulo o estar vacio." }
  let :numericality_error_message { "no es un numero." }
  let :inclusion_error_message { "no esta incluido en catalogo." }

  before do 
    record.valid?
  end

  context 'validate presence of' do
    describe '#fecha' do
      it { expect(record.errors[:fecha]).to include(presence_error_message) }
    end
    describe '#sello' do
      it { expect(record.errors[:sello]).to include(presence_error_message) }
    end
    describe '#no_certificado' do
      it { expect(record.errors[:no_certificado]).to include(presence_error_message) }
    end
    describe '#certificado' do
      it { expect(record.errors[:certificado]).to include(presence_error_message) }
    end
    describe '#subtotal' do
      it { expect(record.errors[:subtotal]).to include(presence_error_message) }
    end
    describe '#moneda' do
      it { expect(record.errors[:moneda]).to include(presence_error_message) }
    end
    describe '#total' do
      it { expect(record.errors[:total]).to include(presence_error_message) }
    end
    describe '#tipo_de_comprobante' do
      it { expect(record.errors[:tipo_de_comprobante]).to include(presence_error_message) }
    end
    describe '#lugar_expedicion' do
      it { expect(record.errors[:lugar_expedicion]).to include(presence_error_message) }
    end
  end

  context 'validate numericality of' do
    describe '#folio' do
      it { expect(record.errors[:folio]).to include(numericality_error_message) }
    end
    describe '#forma_pago' do
      it { expect(record.errors[:forma_pago]).to include(numericality_error_message) }
    end
    describe '#subtotal' do
      it { expect(record.errors[:subtotal]).to include(numericality_error_message) }
    end
    describe '#descuento' do
      it { expect(record.errors[:descuento]).to include(numericality_error_message) }
    end
    describe '#tipo_cambio' do
      it { expect(record.errors[:tipo_cambio]).to include(numericality_error_message) }
    end
    describe '#total' do
      it { expect(record.errors[:total]).to include(numericality_error_message) }
    end
    describe '#lugar_expedicion' do
      it { expect(record.errors[:lugar_expedicion]).to include(numericality_error_message) }
    end
  end

  context 'validate inclusion of' do
    describe '#forma_pago' do
      it { expect(record.errors[:forma_pago]).to include(inclusion_error_message) }
    end
    describe '#moneda' do
      it { expect(record.errors[:moneda]).to include(inclusion_error_message) }
    end
    describe '#tipo_de_comprobante' do
      it { expect(record.errors[:tipo_de_comprobante]).to include(inclusion_error_message) }
    end
    describe '#metodo_pago' do
      it { expect(record.errors[:metodo_pago]).to include(inclusion_error_message) }
    end
  end
end
