# 📖 Capítulo 3 — Adicionando Atributos de Batalha (ALTER TABLE)

**Introdução**  
Até aqui, os heróis têm apenas **identidade**: Nome, Raça e Idade.  
Agora vamos adicionar os **atributos de combate** que tornam cada personagem único em batalha: `Força`, `Defesa` e `Vida`.  
Para isso, usamos o comando `ALTER TABLE` para modificar a estrutura da tabela já existente.

---

### ALTER TABLE — adicionando colunas
```sql
ALTER TABLE personagem
ADD COLUMN Força  INT NOT NULL,
ADD COLUMN Defesa INT NOT NULL,
ADD COLUMN Vida   INT NOT NULL;
```

**O que cada coluna representa**  
- **Força** → poder ofensivo do personagem.  
- **Defesa** → capacidade de resistir a ataques.  
- **Vida** → energia vital, pontos que determinam se o personagem ainda está de pé.  

---

### Exemplos de uso
```sql
-- Atualizar personagens existentes com atributos básicos de combate
UPDATE personagem
SET Força = 26, Defesa = 10, Vida = 100
WHERE Nome = 'Miguel';

UPDATE personagem
SET Força = 18, Defesa = 12, Vida = 120
WHERE Nome = 'Aria';
```

---

## 📝 Tarefas de Assimilação — Capítulo 3

1. Adicione à tabela `personagem` a coluna `Mana` do tipo INT.  
2. Adicione a coluna `Agilidade` do tipo INT à tabela `personagem`.  
3. Explique a diferença entre `ALTER TABLE` e `CREATE TABLE`.  
4. Por que usamos `NOT NULL` ao adicionar novas colunas?  
5. Qual comando usamos para remover uma coluna de uma tabela?  
6. Adicione uma coluna chamada `Classe` do tipo VARCHAR(30).  
7. Atualize todos os personagens para terem `Vida = 100`.  
8. Atualize apenas os personagens da Raça = 'Orc' para terem `Força = 30`.  
9. Explique o risco de usar `UPDATE` sem `WHERE`.  
10. Por que é importante planejar bem os atributos antes de criar ou alterar tabelas?  

---

## ✅ Respostas esperadas

1. ```sql
   ALTER TABLE personagem ADD COLUMN Mana INT NOT NULL;
   ```
2. ```sql
   ALTER TABLE personagem ADD COLUMN Agilidade INT NOT NULL;
   ```
3. `CREATE TABLE` cria uma tabela nova; `ALTER TABLE` modifica uma já existente.  
4. Para garantir que todos os registros tenham um valor válido.  
5. ```sql
   ALTER TABLE personagem DROP COLUMN NomeDaColuna;
   ```
6. ```sql
   ALTER TABLE personagem ADD COLUMN Classe VARCHAR(30) NOT NULL;
   ```
7. ```sql
   UPDATE personagem SET Vida = 100;
   ```
8. ```sql
   UPDATE personagem SET Força = 30 WHERE Raça = 'Orc';
   ```
9. Ele modifica **todas as linhas** da tabela, podendo causar erros graves.  
10. Porque mudanças estruturais podem impactar dados existentes e performance.  

---

✍️ Produzido por **Professor Fabiano de Paula**  
🔗 GitHub — [fabianorpaula](https://github.com/fabianorpaula)
