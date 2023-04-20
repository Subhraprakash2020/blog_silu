class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  validates:title, presence:true
  validates:content, presence:true,length: {minimum:500}
end