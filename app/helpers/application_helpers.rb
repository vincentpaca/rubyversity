module ApplicationHelpers
  def base_url
    @base_url ||= "#{request.env['rack.url_scheme']}://#{request.env['HTTP_HOST']}"
  end

  def link_to (url, display, a_class)
    "<a href='/#{url}' class='#{a_class}'>#{display}</a>"
  end
end
