# 📖 Capítulo 2 — Explorando o Mundo (SELECT e WHERE)

**Introdução**  
Agora que temos personagens no banco, precisamos aprender a **consultar** e **filtrar** informações.  
- `SELECT` → lê os dados de uma tabela.  
- `WHERE` → define condições para trazer apenas o que você quer.  
- `ORDER BY` → organiza os resultados (por exemplo, por idade ou nome).  

---

### Exemplos de uso

```sql
-- Mostrar todos os personagens
SELECT * FROM personagem;

-- Mostrar apenas nome e raça
SELECT Nome, Raça FROM personagem;

-- Mostrar apenas os Elfos
SELECT Nome, Idade FROM personagem
WHERE Raça = 'Elfa';

-- Mostrar personagens com mais de 50 anos
SELECT Nome, Raça, Idade
FROM personagem
WHERE Idade > 50;

-- Mostrar humanos jovens, ordenados por idade desc e depois nome asc
SELECT Nome, Raça, Idade
FROM personagem
WHERE Raça = 'Humano' AND Idade < 25
ORDER BY Idade DESC, Nome ASC;
```

---

## 📝 Tarefas de Assimilação — Capítulo 2

1. Mostre todos os personagens cadastrados.  
2. Liste apenas os nomes dos personagens.  
3. Liste apenas os nomes e idades de todos os Elfos.  
4. Selecione todos os personagens humanos.  
5. Mostre apenas os personagens com mais de 100 anos.  
6. Selecione personagens que sejam Orcs ou Elfos.  
7. Liste os personagens ordenados por idade (do mais novo para o mais velho).  
8. Liste os personagens ordenados alfabeticamente por nome.  
9. Conte quantos personagens existem na tabela.  
10. Conte quantos personagens existem de cada raça.  

---

## ✅ Respostas esperadas

1. ```sql
   SELECT * FROM personagem;
   ```
2. ```sql
   SELECT Nome FROM personagem;
   ```
3. ```sql
   SELECT Nome, Idade FROM personagem
   WHERE Raça = 'Elfa';
   ```
4. ```sql
   SELECT * FROM personagem
   WHERE Raça = 'Humano';
   ```
5. ```sql
   SELECT * FROM personagem
   WHERE Idade > 100;
   ```
6. ```sql
   SELECT * FROM personagem
   WHERE Raça = 'Orc' OR Raça = 'Elfa';
   ```
7. ```sql
   SELECT * FROM personagem
   ORDER BY Idade ASC;
   ```
8. ```sql
   SELECT * FROM personagem
   ORDER BY Nome ASC;
   ```
9. ```sql
   SELECT COUNT(*) AS TotalPersonagens
   FROM personagem;
   ```
10. ```sql
    SELECT Raça, COUNT(*) AS Quantidade
    FROM personagem
    GROUP BY Raça;
    ```

---

✍️ Produzido por **Professor Fabiano de Paula**  
🔗 GitHub — [fabianorpaula](https://github.com/fabianorpaula)
