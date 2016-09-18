module ApplicationHelper
  def random_color_class(prefix = "")
    class_names = ["primary","success", "warning", "danger", "info"]
    @cached_colors ||= class_names.sample(2) # 同一アクション内では2色までしか使用しないように
    prefix + "-" + @cached_colors.sample
  end

  def search_placeholder_text(example, opt = {searchable: false})
    str = I18n.t("common.placeholder.example", example: example)
    str += I18n.t("common.placeholder.multiple") if opt[:multiple]
    str += I18n.t("common.placeholder.searchable") if opt[:searchable]
    str
  end

  def link_to_with_badge(body, url, badge_text)
    link_to url do
      haml_concat body
      haml_tag :span, badge_text, class: "badge"
    end
  end

  def version_info
    return "" unless ver = VersionInfo.find_by(controller_name: params[:controller])
    I18n.t("common.version_info", num: ver.version_str)
  end
end
