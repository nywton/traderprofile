module ApplicationHelper

  def search_bar(arg)
    content_tag :div, class: 'input-group' do
      concat(content_tag(:input,nil, type: 'text', class: 'form-control'))
      concat(content_tag :span, content_tag(:button, 'Buscar', class: 'btn btn-primary'), class: 'input-group-append')
    end
  end
end