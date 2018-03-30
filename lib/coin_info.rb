class CoinInfo

  def method_missing; ''; end

end

Find.find(File.expand_path('coin_infos', __dir__)).each { |file| require_dependency file unless File.directory?(file) }
