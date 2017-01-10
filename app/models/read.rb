class Read < ApplicationRecord
  scope :hot, -> {
  select('reads.url as url')
    .where('reads.created_at > ?', Time.now - 1.day)
    .order(read_count: :desc).limit(10)
  }
end
