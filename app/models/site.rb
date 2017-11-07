class Site
  include Mongoid::Document
  include WeixinRailsMiddleware::AutoGenerateWeixinTokenSecretKey
  field :weixin_secret_key, type: String
  field :weixin_token, type: String
  field :name, type: String
  field :desc, type: String
  field :appid, type: String
  field :appsecret, type: String

  def client
    @client ||= WeixinAuthorize::Client.new(appid, appsecret)
  end
end
