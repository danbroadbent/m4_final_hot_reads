class Read < ApplicationRecord
  scope :hot, -> {
    self.where(updated_at: (Time.now - 24.hours)..Time.now)
        .order(read_count: :desc).limit(10)}
  scope :top, -> {
    self.where(updated_at: (Time.now - 24.hours)..Time.now)
        .order(read_count: :desc).limit(10)}
end
