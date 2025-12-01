INSERT INTO cliente(nome, cpf, telefone, aniversario)
VALUES
('Ana Beatriz da Silva', '42158390712', '11985476231', '12/03/1994'),
('João Carlos Mendes', '90321457866', '11967341109', '25/07/1988'),
('Vitória Gomes Santos', '15894273004', '11995038244', '08/11/1999'),
('Marcos Vinícius Oliveira', '30781945260', '11962837155', '21/09/1991'),
('Luana Ferreira Costa', '76120349815', '11978453299', '03/05/1997'),
('Pedro Henrique Almeida', '52497186033', '11963482077', '14/01/1985'),
('Gabriela Souza Pires', '81234097641', '11991345028', '30/10/2000'),
('Rafael Andrade Couto', '61940758322', '11974659310','19/02/1993'),
('Camila Rodrigues Moraes', '28061497500', '11989274106', '27/06/1989'),
('Bruno César Martins', '94382170548', '11970924851', '11/12/1992');

INSERT INTO Funcionario( nome, cargo, telefone)
VALUES
('Marcos Henrique Dias', 'caixa', '11966667777'),
('Paula Cristina Nunes', 'Gerente', '11955556666'),
('Rogerio da Mata Souza', 'caixa', '11944445555');

INSERT INTO Fornecedor( nome, CPNJ, telefone)
values
('Distribuidora Bom Preco', '12345678000155', '1133221100'),
('Alimentos & Cia', '98765432000166', '1122334455'),
('Bebidas Nacional', '55443322000111', '1144556677');

INSERT INTO produto(nome, preco, validade, id_fornecedor)
values
('Arroz tipo 1 5kg', 22.90, '10/03/2026', 1),
('Feijão Carioca 1kg', 9.80, '22/11/2026', 1),
('Óleo de soja 900ml', 7.50, '19/12/2027', 2),
('Azeite Andorinha 500ml', 15.80, '13/11/2027', 2),
('Refrigerante Coca-Cola 2l', 14.90, '07/06/2029', 3),
(' Água Mineral 1.5L', 4.50, '20/07/2030',3);

INSERT INTO venda(id_cliente, id_funcionario, data_venda, subtotal)
VALUES
(1, 1, '2025-01-20', 45.20),
(3, 2, '2025-01-21', 67.10),
(5, 1, '2025-01-22', 22.90),
(7, 3, '2025-01-23', 30.30),
(10, 2, '2025-01-24', 52.40);


update produto
set nome ='feijão carioca 2kg'
where id_produto =2;

SELECT id_produto, nome, preco
FROM produto
WHERE preco > 10
ORDER BY preco DESC;

SELECT nome, telefone
FROM cliente
ORDER BY nome ASC;

SELECT v.id_venda, c.nome AS cliente, v.data_venda, v.subtotal
FROM venda v
JOIN cliente c ON v.id_cliente = c.id_cliente
ORDER BY v.data_venda DESC;


SELECT f.nome AS funcionario, v.id_venda, v.data_venda, v.subtotal
FROM venda v
JOIN funcionario f ON v.id_funcionario = f.id_funcionario
ORDER BY funcionario;

UPDATE cliente
SET telefone = '11999998888'
WHERE id_cliente = 3;

UPDATE produto
SET preco = preco + 1.50
WHERE id_produto = 5;

UPDATE funcionario
SET cargo = 'Supervisor'
WHERE id_funcionario = 2;

DELETE FROM itemvenda
WHERE id_item = 3;

DELETE FROM venda
WHERE id_venda = 3;

DELETE FROM produto
WHERE id_produto = 6;

INSERT INTO produto (nome, preco, validade, id_fornecedor)
VALUES
('agua mineral com gas', 3.00, '18/05/2030', 3);

delete from produto
where id_produto = 7;



