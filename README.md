# Contabil
Contabilidade Pessoal

Este sistema tem como objetivo controlar as finanças e a contabilidade Pessoal, controle de contas Domestica utilizando as partidas dobradas.

Hoje 30 de setembro de 2018 - 
Encontrei erro para a conexao do banco de dados porque a string do provider não esta sendo gerada pela funções, modifiquei provisoriamente enquando faco os ajustes. Depois que detectei o erro.

Problema da autenticação resolvido. Funcionando perfeitamente. Os dados do usuário e a senha são empacotados num objeto e enviado para a model de controle de usuarios, feito a verificação no banco de dados e retorno se autenticação é valida ou não.
