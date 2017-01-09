class Read < ApplicationRecord
  scope :hot, -> {
  select('reads.url as url')
    .where('reads.created_at > ?', Time.now - 1.day)
    .group("reads.url")
    .order('count("reads".id) DESC').limit(10)
}
end
