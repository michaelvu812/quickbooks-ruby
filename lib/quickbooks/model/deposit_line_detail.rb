module Quickbooks
  module Model
    class DepositLineDetail < BaseModel

      xml_accessor :entity_ref, :from => 'Entity', :as => BaseReference
      xml_accessor :class_ref, :from => 'ClassRef', :as => BaseReference
      xml_accessor :account_ref, :from => 'AccountRef', :as => BaseReference
      xml_accessor :payment_method_ref, :from => 'PaymentMethodRef', :as => BaseReference
      xml_accessor :check_num, :from => 'CheckNum'
      xml_accessor :txn_type, :from => 'TxnType'
      xml_accessor :custom_fields, :from => 'CustomField', :as => [CustomField]
      xml_accessor :tax_code_ref, :from => 'TaxCodeRef', :as => BaseReference
      xml_accessor :tax_applicable_on, :from => 'TaxApplicableOn', :as => :text

      reference_setters :class_ref, :account_ref, :payment_method_ref, :entity_ref, :tax_code_ref

      validates :tax_applicable_on, inclusion: {in: %w(Sales Purchase)}

    end
  end
end
