class RequestTags < ActiveRecord::Base
  attr_accessible :request_id, :tags_id
  belongs_to :requests, :tags
end
