# 📖 Capítulo 7 — Criando a Tabela de Itens (Revisão)

## Introdução
Neste capítulo vamos criar a tabela **`itens`**. A ideia é revisar tudo o que já aprendemos:
- **CREATE TABLE** (Cap. 1)  
- **Tipos de dados** (Cap. 1)  
- **ALTER TABLE** para ajustar (Cap. 3)  
- **Primary Key (PK)** e **AUTO_INCREMENT** (Cap. 5)  
- Diferença entre colunas obrigatórias (**NOT NULL**) e opcionais.  

Cada coluna dos itens será explicada em detalhe, para fixar bem os conceitos.

---

## Estrutura da tabela `itens`
```sql
CREATE TABLE `itens` (
  `id_item` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome_item` VARCHAR(60) NOT NULL,
  `tipo` VARCHAR(30) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `valor` INT NOT NULL,
  `peso` FLOAT NOT NULL,
  `drop_rate` FLOAT NOT NULL,
  `durabilidade` INT NOT NULL,
  `dano` INT NOT NULL,
  `defesa` INT NOT NULL,
  `efeito` INT NOT NULL,
  `consumivel` BOOLEAN NOT NULL,
  `nivel_requirido` INT NOT NULL,
  PRIMARY KEY (`id_item`)
) CHARACTER SET utf8mb4;
```

### Revisão de cada elemento
- **`id_item INT UNSIGNED NOT NULL AUTO_INCREMENT`** → número único para identificar cada item.
  - `INT` = número inteiro.
  - `UNSIGNED` = sem valores negativos.
  - `AUTO_INCREMENT` = aumenta sozinho (1, 2, 3...).
  - `PRIMARY KEY` = identidade oficial da tabela.

- **`nome_item VARCHAR(60)`** → nome do item (texto até 60 caracteres).
- **`tipo VARCHAR(30)`** → tipo do item (Arma, Armadura, Poção, Veneno, Acessório...).
- **`descricao VARCHAR(255)`** → descrição detalhada.
- **`valor INT`** → preço ou custo em moedas do jogo.
- **`peso FLOAT`** → peso do item (usamos FLOAT pois pode ter decimais: 2.5 kg, 3.7 kg...).
- **`drop_rate FLOAT`** → chance de aparecer (0.15 = 15%).
- **`durabilidade INT`** → quanto tempo o item dura até quebrar.
- **`dano INT`** → quanto de ataque ele causa (se for arma).
- **`defesa INT`** → quanto de proteção ele oferece (se for armadura).
- **`efeito INT`** → representa um código numérico de efeitos especiais.
- **`consumivel BOOLEAN`** → se é descartável ao usar (1 = sim, 0 = não).
- **`nivel_requirido INT`** → nível mínimo que o jogador precisa ter para usar.

---

## Inserindo exemplos
```sql
INSERT INTO `itens` (nome_item, tipo, descricao, valor, peso, drop_rate, durabilidade, dano, defesa, efeito, consumivel, nivel_requirido)
VALUES
 ('Espada de Ferro', 'Arma', 'Espada simples usada por soldados.', 150, 5.5, 0.20, 100, 25, 0, 0, 0, 1),
 ('Poção de Cura', 'Poção', 'Recupera 50 pontos de vida.', 50, 0.3, 0.50, 1, 0, 0, 1, 1, 1),
 ('Escudo de Madeira', 'Armadura', 'Protege contra ataques leves.', 100, 3.0, 0.15, 80, 0, 15, 0, 0, 1);
```

---

## 📝 Tarefas de Assimilação — Capítulo 7

1. Crie a tabela `itens` conforme a estrutura acima.  
2. Insira um item do tipo **Veneno** chamado *Essência Tóxica*.  
3. Insira um item do tipo **Acessório** chamado *Anel da Sorte*.  
4. Liste todos os itens cadastrados.  
5. Mostre apenas o `nome_item` e o `tipo` de todos os itens.  
6. Liste todos os itens do tipo **Poção**.  
7. Mostre apenas os itens que custam mais de 200 moedas.  
8. Mostre apenas os itens que são **consumíveis**.  
9. Mostre apenas os itens com `drop_rate` maior que 0.2.  
10. Conte quantos itens existem de cada tipo (`GROUP BY`).  

---

## ✅ Respostas esperadas

1. **Criação da tabela**
```sql
CREATE TABLE `itens` (...);
```

2. **Inserir Veneno**
```sql
INSERT INTO itens (nome_item, tipo, descricao, valor, peso, drop_rate, durabilidade, dano, defesa, efeito, consumivel, nivel_requirido)
VALUES ('Essência Tóxica', 'Veneno', 'Substância mortal aplicada em lâminas.', 120, 0.4, 0.10, 1, 0, 0, 15, 1, 5);
```

3. **Inserir Acessório**
```sql
INSERT INTO itens (nome_item, tipo, descricao, valor, peso, drop_rate, durabilidade, dano, defesa, efeito, consumivel, nivel_requirido)
VALUES ('Anel da Sorte', 'Acessório', 'Aumenta a chance de acertos críticos.', 300, 0.1, 0.05, 999, 0, 5, 20, 0, 2);
```

4. **Listar todos**
```sql
SELECT * FROM itens;
```

5. **Nome e tipo**
```sql
SELECT nome_item, tipo FROM itens;
```

6. **Apenas Poções**
```sql
SELECT * FROM itens WHERE tipo = 'Poção';
```

7. **Itens com valor > 200**
```sql
SELECT * FROM itens WHERE valor > 200;
```

8. **Itens consumíveis**
```sql
SELECT * FROM itens WHERE consumivel = 1;
```

9. **Itens com drop_rate > 0.2**
```sql
SELECT * FROM itens WHERE drop_rate > 0.2;
```

10. **Contar itens por tipo**
```sql
SELECT tipo, COUNT(*) AS quantidade FROM itens GROUP BY tipo;
```

---

✍️ Produzido por **Professor Fabiano de Paula**  
🔗 GitHub — [fabianorpaula](https://github.com/fabianorpaula)

