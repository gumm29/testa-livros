#language: pt

Funcionalidade: Verificar existência de livro em três livrarias

Esquema do Cenario: Acessar o site do Submarino e depois em mais duas livrarias e comparar o mesmo livro, buscar nome e verificar se o título é do mesmo autor
Dado Acessar primeiro livro do submarino, guardar nome e autor 
Quando Verificar a existência do livro em mais duas livrarias "<tipo>"
Então Validar título e se o autor é o mesmo "<tipo>"

Exemplos:
  | tipo     |
  | positivo |
  | negativo |