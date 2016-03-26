module AfConverter
  def name
    super.to_af_str
  end

  class ::String
    def to_af_str
      ret = self
      ret = ret.tr("ァ-ン","ぁ-ん")
      ret = ret.tr("ヴ","ゔ")
      ret = ret.tr("0-9", "〇一二三四五六七八九")
    end
  end
end
