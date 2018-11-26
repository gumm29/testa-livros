class Pagina_Inicial_Saraiva < SitePrism::Page
  set_url 'https://busca.saraiva.com.br/'

  element :pesquisa, '#q'
  element :clicar, '#chaordic-search-button'
  element :resultado_autor, '.nm-product-subtitle'

  def busca resultado
    pesquisa.set resultado
    clicar.click
  end

  def resultado_busca
    resultado_autor.text
  end

end
    