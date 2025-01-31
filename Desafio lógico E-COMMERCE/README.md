# Descrição do Desafio

>Replicar a modelagem do projeto lógico de banco de dados para o cenário de e-commerce. Ficando atento as definições de chave primária e estrangeira, assim como as constraints presentes no cenário modelado.

> Realizei a criação do Script SQL para criação do esquema do banco de dados. Posteriormente, realizei a persistência de dados para realização de testes. Especificanod ainda queries mais complexas dos que apresentadas durante a 
explicação do desafio. Sendo assim, crie queries SQL com as cláusulas abaixo:

* Recuperações simples com SELECT Statement
* Filtros com WHERE Statement
* Crie expressões para gerar atributos derivados
* Defina ordenações dos dados com ORDER BY
* Condições de filtros aos grupos – HAVING Statement
* Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados

## Diretrizes

* Não há um mínimo de queries a serem realizadas;
* Os tópicos supracitados devem estar presentes nas queries;
* Elabore perguntas que podem ser respondidas pelas consultas;
* As cláusulas podem estar presentes em mais de uma query;
* O projeto deverá ser adicionado a um repositório do Github para futura avaliação do desafio de projeto. Adicione ao Readme a descrição do projeto lógico para fornecer o contexto sobre seu esquema lógico apresentado.

## Objetivo:

* Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
* Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
* Entrega – Possui status e código de rastreio;

## Algumas das perguntas que podes fazer para embasar as queries SQL:

* Quantos pedidos foram feitos por cada cliente?
* Algum vendedor também é fornecedor?
* Relação de produtos fornecedores e estoques;
* Relação de nomes dos fornecedores e nomes dos produtos;