module ApplicationHelper
  def random_color_class(prefix = "")
    class_names = ["primary","success", "warning", "danger", "info"]
    prefix + "-" + class_names.sample
  end
end
