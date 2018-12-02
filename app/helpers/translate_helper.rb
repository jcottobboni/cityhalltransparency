module TranslateHelper

  def pluralize_model(class_name)
    I18n.t("activerecord.models.#{class_name.to_s.gsub('::', '/').downcase}").pluralize
  end

  def translate_model(class_name)
    I18n.t("activerecord.models.#{class_name.to_s.gsub('::', '/').downcase}")
  end

  def translate_attr(class_name, attr_name)
    I18n.t("activerecord.attributes.#{class_name.to_s.gsub('::', '/').downcase}.#{attr_name}")
  end

  def translate_enum_name(class_name, enum_name, enum_value)
    return nil unless enum_value
    I18n.t("activerecord.attributes.#{class_name.to_s.gsub('::', '/').downcase}.#{enum_name}.#{enum_value}")
  end

  def label_translate(label_name)
    I18n.t("labels.#{label_name}")
  end

  def flash_messages_translate(message_name)
    I18n.t("flash_messages.#{message_name}")
  end
end
