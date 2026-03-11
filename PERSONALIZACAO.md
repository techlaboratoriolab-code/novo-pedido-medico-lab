# 🎨 Como Personalizar o Logo

## Seu Logo Atual

O arquivo `logo.svg` já está criado e integrado ao formulário! Ele tem:

- ✅ Gradiente roxo-azul profissional
- ✅ Símbolo de molécula/DNA (tema científico)
- ✅ Texto "D Lab - Laboratório e Medicina Diagnóstica"
- ✅ Cruz médica decorativa
- ✅ Design moderno e limpo

## Como Alterar o Logo

### Opção 1: Substituir por Sua Própria Logo

1. **Se você tem um arquivo de logo (PNG, JPG, SVG)**:
   - Copie seu arquivo de logo para a pasta do projeto
   - Renomeie para `logo.svg` ou `logo.png`
   - Se usar PNG/JPG, edite o arquivo `pedido_medico.html`:
     ```html
     <img src="logo.png" alt="D Lab" class="logo">
     ```

### Opção 2: Editar o Logo Atual (SVG)

Abra o arquivo `logo.svg` em um editor de texto e modifique:

#### Mudar as Cores:
```svg
<!-- Procure por estas linhas e mude as cores -->
<stop offset="0%" style="stop-color:#4a148c;stop-opacity:1" />
<!-- Mude #4a148c para sua cor preferida -->

<stop offset="100%" style="stop-color:#1565c0;stop-opacity:1" />
<!-- Mude #1565c0 para sua segunda cor -->
```

#### Mudar o Texto:
```svg
<!-- Procure por esta linha -->
<text x="105" y="45" font-family="Arial, sans-serif" font-size="28" font-weight="bold" fill="#ffffff">D Lab</text>
<!-- Mude "D Lab" para o nome do seu laboratório -->

<!-- E estas também -->
<text x="105" y="62" font-family="Arial, sans-serif" font-size="10" fill="#e3f2fd">Laboratório e Medicina</text>
<text x="105" y="75" font-family="Arial, sans-serif" font-size="10" fill="#e3f2fd">Diagnóstica</text>
```

### Opção 3: Usar um Editor Visual de SVG

Ferramentas online gratuitas:
- **Boxy SVG** (https://boxy-svg.com/app)
- **SVG-Edit** (https://svg-edit.github.io/svgedit/)
- **Figma** (https://figma.com) - Free

1. Abra `logo.svg` na ferramenta
2. Edite visualmente (cores, textos, formas)
3. Exporte/Salve como SVG
4. Substitua o arquivo original

## Especificações do Logo

- **Tamanho**: 200x100 pixels
- **Formato**: SVG (recomendado) ou PNG/JPG
- **Cores**: Qualquer cor, mas o branco funciona bem para impressão
- **Posição**: Canto superior esquerdo do formulário

## Cores Sugeridas para Laboratórios

### Clássico Médico
```
Azul: #0066cc
Verde: #00aa66
```

### Profissional
```
Azul escuro: #1a237e
Azul claro: #1976d2
```

### Moderno
```
Roxo: #6a1b9a
Ciano: #00acc1
```

## Testando Seu Logo

Após modificar o logo:

1. Salve o arquivo
2. Atualize a página do navegador (F5)
3. Verifique se ficou bom
4. Faça um teste de impressão (Ctrl+P)

## Dicas Importantes

✅ Use SVG para melhor qualidade em qualquer tamanho  
✅ Evite logos muito detalhados (não ficam bons impressos)  
✅ Prefira cores sólidas para impressão em preto e branco  
✅ Teste a impressão antes de usar oficialmente  
✅ Mantenha o tamanho 200x100px para melhor ajuste  

## Precisa de Ajuda?

Se precisar de um logo customizado:
1. Descreva como quer o logo
2. Informe o nome do laboratório
3. Escolha as cores preferidas
4. Eu crio para você!

---

**Seu logo está pronto e funcionando! 🎉**
