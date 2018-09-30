# Contabil
Contabilidade Pessoal

Este sistema tem como objetivo controlar as finanças e a contabilidade Pessoal, controle de contas dooméstica utilizando as partidas dobradas.

Hoje 30 de setembro de 2018 

Encontrei erro na conexao do banco de dados porque a string do provider não esta sendo gerada pela funções, modifiquei provisoriamente enquando faço os ajustes. Depois que detectei o erro.

Problema da autenticação resolvido. Funcionando perfeitamente. Os dados do usuário e a senha são empacotados num objeto e enviado para a model de controle de usuarios, que faz a verificação no banco de dados e retorno o status da autenticação se é valida ou não.

Obs:  A instalação do projeto deve seguir criação das pastas.
Se utilizar a git  deve antes criar na raiz do disco C:\Aplicaçao\
Dentro da Pasta da c:\aplicacao\Contabil

c:\aplicacao\Contabil
c:\aplicacao\Contabil\DB
c:\aplicacao\Contabil\Funcoes
c:\aplicacao\Contabil\Telas
c:\aplicacao\Contabil\Configura
c:\aplicacao\Contabil\Classes
c:\aplicacao\Contabil\Controle

