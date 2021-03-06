Dado("Acessar primeiro livro do submarino, guardar nome e autor") do
    @home = Pagina_Inicial_Submarino.new
    @home.load
    @home.livro_submarino
    @resultado = @home.codigo
    @resultado_autor = @home.autor
end

Quando("Verificar a existência do livro em mais duas livrarias {string}") do |tipo|
    @opcao1 = Pagina_Inicial_Saraiva.new
    @opcao1.load
    @opcao1.busca @resultado
    @saraiva_autor = tipo.eql?('positivo') ? @opcao1.resultado_busca : nil

    @opcao2 = Pagina_Inicial_Cultura.new
    @opcao2.load
    @opcao2.busca @resultado
    @cultura_autor = tipo.eql?('positivo') ? @opcao2.resultado_busca : nil
end

Então("Validar título e se o autor é o mesmo {string}") do |tipo|
    if tipo.eql?('positivo')
    expect(@saraiva_autor).to include @resultado_autor[8..15]
    expect(@cultura_autor).to include @resultado_autor[8..15]
    else
        expect(@saraiva_autor).to eql nil
        expect(@cultura_autor).to eql nil
    end
end