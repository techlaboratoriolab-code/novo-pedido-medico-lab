# 📋 Requisição de Exame Digital - D Lab

Sistema digitalizado de requisição de exames laboratoriais baseado no modelo oficial do D Lab (Laboratório e Medicina Diagnóstica).

## 🎯 Sobre o Projeto

Este é um formulário digital que replica EXATAMENTE o modelo físico de requisição de exames, incluindo todos os campos, checkboxes e seções do documento original. Ideal para uso em clínicas e consultórios que trabalham com o D Lab.

## ✨ Funcionalidades Principais

### 🔄 Automações Implementadas

1. **Assinatura Automática do Médico**
   - Digite o nome do médico e a assinatura aparece automaticamente em estilo manuscrito
   - Preencha o CRM e ele aparece junto à assinatura
   - Visual profissional e elegante

2. **Formatação Automática**
   - CPF: xxx.xxx.xxx-xx
   - Telefone: (xx) xxxxx-xxxx
   - Data preenchida automaticamente

3. **Salvamento Inteligente**
   - Salva todos os dados no navegador
   - Recupera formulários anteriores
   - Histórico de requisições

## 📋 Estrutura do Formulário

### Seções Principais:

1. **Cabeçalho**
   - Logo D Lab
   - QR Code para WhatsApp
   - Título "REQUISIÇÃO DE EXAME"

2. **Dados do Paciente**
   - Nome completo
   - Nome da mãe
   - Telefone
   - CPF
   - Data de nascimento
   - Gênero
   - Convênio
   - Inscrição

3. **Local de Coleta**
   - ☑️ Ectocérvice
   - ☑️ Endocérvice
   - ☑️ Fundo de Saco
   - ☑️ Vagina
   - ☑️ Vulva
   - ☑️ Ânus
   - ☑️ Boca
   - ☑️ Outros

4. **Rotina Cito-histopatológica**
   - Citologia Convencional
   - Citologia em Base Líquida
   - Citologia Geral
   - Citologia Hormonal Isolada
   - Histopatologia
   - Citologia Anal

5. **Painel Molecular para HPV**
   - Alto Risco
   - Baixo Risco
   - HPV 28 Tipos
   - HPV Quant 21 Tipos

6. **Painel Molecular para Agentes Infecciosos**
   - Lista completa de exames disponíveis
   - Checkboxes para seleção individual

7. **Culturas**
   - Cultura Seletiva para Streptococcus
   - Cultura Bacteriológica
   - Cultura para Candidas
   - Urocultura
   - Antibiograma
   - Antifungigrama

8. **Microscopia**
   - Bacterioscopia

9. **Painel Molecular para Risco de Trombose**
   - 6 Mutações especificadas

10. **Indicação**
    - Rotina Preventiva
    - Alteração Citológica Prévia
    - Controle Após Tratamento
    - Outros

11. **Colposcopia**
    - Não realizada
    - Sem alterações
    - Achados maiores
    - Achados menores

12. **Informes Clínicos**
    - UM, THR, ACO, DIU, Prurido
    - Gestante, Menopausa, Cauterização
    - CAF, Histerectomia

13. **Dados Complementares**
    - Área de texto livre para observações

14. **Rodapé**
    - Data da requisição
    - Número de frascos/lâminas
    - Assinatura do paciente
    - **Assinatura automática do médico**
    - Informações dos médicos responsáveis
    - Contatos do laboratório

## 🚀 Como Usar

## 🔧 Configuração de Ambiente (Vercel)

Para não deixar a chave no HTML, o projeto agora lê do ambiente via `/api/config`.

1. No Vercel, configure as variáveis:
   - `SUPABASE_URL`
   - `SUPABASE_ANON_KEY`
2. Faça novo deploy.
3. Localmente, use o arquivo `.env.example` como base para criar seu `.env`.

> Importante: use somente chave `anon` no frontend. Nunca exponha `service_role`.

## 🔗 Acesso Direto por Médico

No Vercel, o formulário agora aceita links específicos por médico sem precisar digitar login e senha na tela.

Formato da URL:

- `/medico/nome-do-medico`

Exemplos:

- `/medico/decio-fausto-gorini`
- `/medico/aline-marques-dos-santos`
- `/medico/thiago-jose-fernandes`

Observações:

- A rota é resolvida pelo `vercel.json` e sempre abre o mesmo `pedido_medico.html`.
- Ao acessar a URL, o sistema identifica o médico pelo slug da URL e libera o formulário automaticamente.
- Se o link não corresponder a nenhum médico da lista carregada, o sistema volta para o login manual.

### Passo 1: Abrir o Formulário
- Abra o arquivo `pedido_medico.html` em qualquer navegador
- Chrome, Firefox, Edge ou Safari

### Passo 2: Preencher Dados do Paciente
- Digite nome, CPF (formatação automática), telefone
- Preencha data de nascimento, gênero, convênio

### Passo 3: Selecionar Exames
- Marque os checkboxes dos exames solicitados
- Use as seções de acordo com o tipo de exame

### Passo 4: Dados Complementares
- Adicione observações importantes
- Informações clínicas relevantes

### Passo 5: Assinatura do Médico
- **Digite o nome do médico** → A assinatura aparece automaticamente!
- Digite o CRM
- A assinatura é exibida em estilo manuscrito profissional

### Passo 6: Imprimir ou Salvar
- Use o botão **"Imprimir / Salvar PDF"**
- Ou pressione Ctrl+P (Windows) / Cmd+P (Mac)
- Escolha "Salvar como PDF" na impressora

## 💾 Funcionalidades dos Botões

### 🖨️ Imprimir / Salvar PDF
- Abre a janela de impressão do navegador
- Permite salvar como PDF
- Remove automaticamente os botões da impressão
- Formato A4 otimizado

### 💾 Salvar Dados
- Salva todos os campos preenchidos no navegador
- Salva checkboxes marcados
- Cria histórico de requisições
- Dados ficam salvos mesmo fechando o navegador

### 🔄 Limpar Formulário
- Limpa todos os campos
- Desmarca todos os checkboxes
- Confirma antes de limpar
- Mantém apenas a data atual

## 🎨 Design e Aparência

- **Layout**: Idêntico ao formulário físico do D Lab
- **Fonte**: Arial (padrão profissional)
- **Assinatura**: Brush Script MT (estilo manuscrito)
- **Cores**: Preto e branco para impressão perfeita
- **Tamanho**: A4 (210mm) otimizado

## 📱 Compatibilidade

### Navegadores
✅ Google Chrome 90+  
✅ Mozilla Firefox 88+  
✅ Microsoft Edge 90+  
✅ Safari 14+  
✅ Opera 76+  

### Dispositivos
✅ Desktop / Notebook  
✅ Tablet  
✅ Smartphone (responsivo)

### Impressão
✅ Impressora física  
✅ PDF virtual  
✅ Exportação para PDF  

## 🔐 Segurança e Privacidade

- ✅ **100% Local**: Todos os dados ficam no seu navegador
- ✅ **Sem Internet**: Funciona offline após carregar
- ✅ **Sem Servidores**: Nenhum dado é enviado para servidores externos
- ✅ **LGPD Compliant**: Conforme Lei Geral de Proteção de Dados

## 💡 Dicas Importantes

### ✨ Assinatura Automática
- A assinatura do médico é gerada AUTOMATICAMENTE ao digitar o nome
- Use fonte cursiva elegante para visual profissional
- O CRM aparece logo abaixo da assinatura

### 📋 Checkboxes
- Marque todos os exames solicitados
- Suporta múltiplas seleções
- Salva o estado ao usar "Salvar Dados"

### 🖨️ Impressão Perfeita
- Use impressão paisagem ou retrato (ambos funcionam)
- Margens automáticas otimizadas
- Botões são removidos automaticamente na impressão

### 💾 Recuperar Dados
- Os dados salvos ficam no localStorage do navegador
- Para recuperar, implemente função de carregamento
- Ou use o histórico salvo

## 🔧 Personalização (Opcional)

### Alterar Logo
Substitua a div do logo no HTML:
```html
<div style="background: linear-gradient(...)">
  <!-- Sua logo aqui -->
</div>
```

### Alterar Informações do Rodapé
Edite a seção `.medicos-info` com os dados da sua clínica:
```html
<span><strong>Seu Nome</strong> CRM XX 00000</span>
```

### Adicionar Mais Exames
Copie a estrutura de checkbox e adicione novos:
```html
<div class="checkbox-item">
    <input type="checkbox" id="novoExame">
    <label for="novoExame">Novo Exame</label>
</div>
```

## 📞 Suporte

### Problemas Comuns

**❓ A assinatura não aparece**
- Certifique-se de digitar o nome do médico no campo correto
- Aguarde um momento após digitar
- Verifique se o JavaScript está ativado

**❓ Não consigo salvar como PDF**
- Use Ctrl+P ou o botão "Imprimir"
- Selecione "Microsoft Print to PDF" ou similar
- Escolha o destino do arquivo

**❓ Os dados não salvam**
- Verifique se não está em modo anônimo/privado
- Alguns navegadores bloqueiam localStorage em modo privado
- Use modo normal do navegador

**❓ Impressão cortada**
- Ajuste as margens na configuração de impressão
- Use configuração "Padrão" ou "Mínima"
- Experimente orientação retrato

## 📝 Versão e Atualizações

- **Versão Atual**: 2.0
- **Data**: 26/02/2026
- **Baseado em**: Modelo oficial D Lab
- **Tipo**: Formulário HTML puro (sem frameworks)

## 🔄 Melhorias Futuras

- [ ] Função de carregar requisições salvas
- [ ] Exportação direta para PDF sem impressão
- [ ] Envio por email
- [ ] Código de barras na requisição
- [ ] Integração com sistema do laboratório
- [ ] Upload de logo personalizado
- [ ] Múltiplos idiomas

## 📄 Licença

Este projeto é de uso livre para fins médicos e clínicos.

---

**🏥 Desenvolvido para facilitar o trabalho de médicos e profissionais de saúde!**

Para dúvidas ou sugestões, consulte a documentação ou entre em contato com o desenvolvedor.
