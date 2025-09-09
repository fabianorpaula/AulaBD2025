# 📖 Capítulo 4 — Criando e Evoluindo Heróis (INSERT, UPDATE e SET)

**Introdução**  
Agora que os personagens já têm atributos de identidade e de batalha, é hora de **popular o mundo** e **evoluir os heróis**.  
- `INSERT` → cria novos personagens.  
- `UPDATE` → altera dados de personagens existentes.  
- `SET` → define os valores a serem modificados.

---

### INSERT — Criando novos personagens
```sql
-- Criar um dragão poderoso
INSERT INTO personagem (Nome, Raça, Idade, Força, Defesa, Vida)
VALUES ('Alduin', 'Dragão', 500, 90, 40, 200);

-- Criar dois personagens de uma só vez
INSERT INTO personagem (Nome, Raça, Idade, Força, Defesa, Vida)
VALUES
('Rurik', 'Humano', 30, 20, 15, 100),
('Elora', 'Elfa',   220, 25, 18, 120);
```

---

### UPDATE + SET — Evoluindo personagens
```sql
-- Rurik treinou e aumentou a força
UPDATE personagem
SET Força = 28
WHERE Nome = 'Rurik';

-- Elora recebeu uma bênção élfica: força e defesa aumentaram
UPDATE personagem
SET Força = 30, Defesa = 22
WHERE Nome = 'Elora';

-- Um festival de cura restaurou a vida de todos
UPDATE personagem
SET Vida = 100;
```

---

## 📝 Tarefas de Assimilação — Capítulo 4

1. Insira um humano chamado **Brom**, 65 anos, força 22, defesa 14, vida 110.  
2. Insira uma elfa chamada **Lyra**, 200 anos, força 25, defesa 15, vida 120.  
3. Crie um personagem Orc com força maior que 35.  
4. Insira dois personagens de raças diferentes em um único `INSERT`.  
5. Aumente a força de todos os Orcs em +5.  
6. Diminua a defesa de todas as Elfas em -2.  
7. Atualize a vida do personagem Brom para 150.  
8. Coloque a defesa de todos os humanos como 20.  
9. Mude nome e idade de um personagem à sua escolha com um único `UPDATE ... SET`.  
10. Restaure a vida de todos os personagens para 100.  

---

## ✅ Respostas esperadas

1. ```sql
   INSERT INTO personagem (Nome, Raça, Idade, Força, Defesa, Vida)
   VALUES ('Brom', 'Humano', 65, 22, 14, 110);
   ```
2. ```sql
   INSERT INTO personagem (Nome, Raça, Idade, Força, Defesa, Vida)
   VALUES ('Lyra', 'Elfa', 200, 25, 15, 120);
   ```
3. ```sql
   INSERT INTO personagem (Nome, Raça, Idade, Força, Defesa, Vida)
   VALUES ('Grum', 'Orc', 40, 38, 20, 130);
   ```
4. ```sql
   INSERT INTO personagem (Nome, Raça, Idade, Força, Defesa, Vida)
   VALUES ('Thorin', 'Anão', 80, 28, 25, 140),
          ('Kael', 'Humano', 22, 18, 12, 90);
   ```
5. ```sql
   UPDATE personagem SET Força = Força + 5 WHERE Raça = 'Orc';
   ```
6. ```sql
   UPDATE personagem SET Defesa = Defesa - 2 WHERE Raça = 'Elfa';
   ```
7. ```sql
   UPDATE personagem SET Vida = 150 WHERE Nome = 'Brom';
   ```
8. ```sql
   UPDATE personagem SET Defesa = 20 WHERE Raça = 'Humano';
   ```
9. ```sql
   UPDATE personagem SET Nome = 'NovoNome', Idade = 35 WHERE Nome = 'Aria';
   ```
10. ```sql
    UPDATE personagem SET Vida = 100;
    ```

---

✍️ Produzido por **Professor Fabiano de Paula**  
🔗 GitHub — [fabianorpaula](https://github.com/fabianorpaula)
