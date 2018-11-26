class Pagina_Inicial_Submarino < SitePrism::Page
    set_url 'https://www.submarino.com.br/'

    element :livro, 'div[data-tracker="recommendation-home5"] div[data-index="3"] a[class="card-product-url"]'
    element :livro_autor, '.TextUI-sc-1hrwx40-0.byQdzY'
    element :livro_isbn, :xpath, '//*[@id="info-section"]/div[2]/section/div/div/div[3]/table/tbody/tr[5]/td[2]/span'
                            
    def livro_submarino
        livro.click
    end

    def autor
        livro_autor.text
    end

    def codigo
        livro_isbn.text
    end
end