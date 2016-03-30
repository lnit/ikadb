module AfConverter
  def name
    super.to_af_str
  end

  class ::String
    def to_af_str
      return self if Thread.current[:session][:af_disable]
      ret = self
      ret = ret.tr("ァ-ン","ぁ-ん")
      ret = ret.tr("ヴ","ゔ")
      ret = ret.tr("0-9", "〇一二三四五六七八九")
      ret.gsub!(/α/, "あるふぁ")
      ret.gsub!(/β/, "べーた")
      ret.gsub!(/ZAP/, "ざっぷ")
      ret.gsub!(/KOG/, "こぐ")
      ret.gsub!(/amiibo/, "あみーぼ")
      ret.gsub!(/bit/, "びっと")
      ret.gsub!(/Hi/, "はい")
      ret.gsub!(/WHITE/, "ほわいと")
      ret.gsub!(/BLACK/, "ぶらっく")
      ret.gsub!(/B/, "びー")
      ret.gsub!(/C/, "しー")
      ret.gsub!(/F/, "えふ")
      ret.gsub!(/D/, "でぃー")
      ret.gsub!(/G/, "えむ")
      ret.gsub!(/H/, "えいち")
      ret.gsub!(/K/, "けー")
      ret.gsub!(/L/, "える")
      ret.gsub!(/M/, "えむ")
      ret.gsub!(/N/, "えぬ")
      ret.gsub!(/R/, "あーる")
      ret.gsub!(/T/, "てぃー")

      ret
    end
  end
end
