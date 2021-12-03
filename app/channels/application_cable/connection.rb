module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :uuid

    def connect
      Thread.current[:key] = 0
      self.uuid = SecureRandom.urlsafe_base64
    end
  end
end
