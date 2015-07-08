module ApplicationHelper
  def random_color_class(prefix = "")
    class_names = ["primary","success", "warning", "danger", "info"]
    @cached_colors ||= class_names.sample(2) # 同一アクション内では2色までしか使用しないように
    prefix + "-" + @cached_colors.sample
  end

  def search_placeholder_text(example, opt = {searchable: false})
    str = I18n.t("common.placeholder.example", example: example)
    str += I18n.t("common.placeholder.searchable") if opt[:searchable]
    str
  end
end
