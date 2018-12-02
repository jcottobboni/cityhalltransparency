# frozen_string_literal: true

module ApplicationHelper

  def link_to_show(path)
    link_to path,
            class: "btn btn-info btn-sm",
            title: "Visualizar",
            style: "color: #FFF; float: none;" do
      content_tag :span, class: "fa fa-search" do
      end
    end
  end

  def link_to_edit(path, *options)
    link_to path,
            class: "btn btn-warning btn-sm",
            title: "Alterar",
            style: "color: #FFF; " do
      content_tag :span, class: "fa fa-pencil" do
        options.first[:label] if options.present? && options.first[:label]
      end

    end
  end

  def link_to_destroy(path)
    link_to path,
            method: "delete",
            class: "btn btn-danger btn-sm",
            title: "Excluir",
            data: { confirm: label_translate(:confirm_delete),
                    'confirm-button-text': "Confirmar",
                    'cancel-button-text': "Cancelar",
                    'confirm-button-color': "#66CD00",
                    'cancel-button-color': "#ff0000",
                    'sweet-alert-type': "warning",
            },
            style: "color: #FFF; float: none;" do
      content_tag :span, class: "fa fa-trash-o" do
      end
    end
  end

  # Retorna valor Ativo ou Inativo
  # @param [Boolean] valor
  # @return [String] Ativo ou Inativo
  def active_inative(value)
    value ? label_translate(:active) : label_translate(:inactive)
  end

  def yes_no(value)
    value ? "Sim" : "Não"
  end
end
