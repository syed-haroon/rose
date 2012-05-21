#Nested Attributes Uniqueness Validator - Type A
#class NestedAttributesUniquenessValidator < ActiveModel::Validator
#  def validate_each(record, attribute, value)
#    record.errors[attribute] << "Products names must be unique" unless value.map(&:name).uniq.size == value.size
#  end
#end

#Nested Attributes Uniqueness Validator - Type B
#class NestedAttributesUniquenessValidator < ActiveModel::EachValidator
#  def validate_each(record, attribute, value)#
#    unless value.map(&options[:field]).uniq.size == value.size
#      record.errors[attribute] << "must be unique"
#      duplicates = value - Hash[value.map{|obj| [obj[options[:field]], obj]}].values
#      duplicates.each { |obj| obj.errors[options[:field]] << "has already been taken" }
#    end
#  end
#end
