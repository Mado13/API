class JsonWebToken
  SECERT_KEY = Rails.application.secrets.secret_key_base.to_s

  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECERT_KEY)
  end

  def self.decode(token)
    decoded = JWT.decode(token, SECERT_KEY)[0]
    HashWithIndifferentAccess.new decoded
  end
end
