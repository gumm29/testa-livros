class Pagina_Inicial_Cultura < SitePrism::Page
  set_url 'https://www.livrariacultura.com.br/'

  element :pesquisa, '#Ntt-responsive'
  element :clicar, '#search-box-submit'
  element :resultado_autor, '.product-font-ev.author-title-ev'

  def busca resultado
    pesquisa.set resultado
    clicar.click
  end

  def resultado_busca
    resultado_autor.text
  end

end
    