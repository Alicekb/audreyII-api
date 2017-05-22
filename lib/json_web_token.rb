class JsonWebToken
  def self.encode(payload)
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

  def self.decode(token)
    return JWT.decode(token, Rails.application.secrets.json_web_token_secret).first
  rescue
    nil
  end
end