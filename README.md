# Site legal · Axion Pocket News

Páginas estáticas exigidas pela App Store. Publicadas no GitHub Pages: repositório público `Axion-AI-Lab/pocket-news`, endereço `https://axion-ai-lab.github.io/pocket-news/`.

| Página | Arquivo | URL (`ios/.../LegalLinks.swift`) |
|---|---|---|
| Início | `index.html` | `https://axion-ai-lab.github.io/pocket-news/` |
| Termos de Uso | `termos/index.html` | `…/pocket-news/termos/` |
| Política de Privacidade | `privacidade/index.html` | `…/pocket-news/privacidade/` |
| Suporte | `suporte/index.html` | `…/pocket-news/suporte/` |

HTML e CSS puros, sem script, sem rastreamento, sem fontes externas. Claro e escuro automáticos.

## Antes de publicar uma mudança
Responsável: Gabriel Postiglione, pessoa física. Contato público: e-mail de suporte nas páginas.
Revisão jurídica: ainda recomendada (o texto foi escrito por IA).

Passos originais:
1. Preencher os campos amarelos (`class="todo"`): nome ou razão social, CPF ou CNPJ, e-mail de suporte, e-mail de privacidade e data de vigência.
2. Pedir revisão jurídica dos Termos e da Política (LGPD e CDC). O texto foi escrito por IA a partir do comportamento real do app.
3. Remover as faixas de rascunho (`data-draft`).
4. Rodar `./check.sh`. Ele só termina com sucesso sem pendências.
5. Publicar em hospedagem estática (decisão de Gabriel). Opções sem custo: GitHub Pages ou Cloudflare Pages. O domínio é custo separado.
6. Se o domínio mudar, atualizar `LegalLinks.swift`, gerar build novo e colar as URLs no App Store Connect: Privacy Policy URL (App Privacy), Support URL (App Information) e, se usar Termos próprios, a EULA.

## Manter coerente com o app
A Política descreve a versão sem servidor: dados só no aparelho, notificações locais. Quando o backend entrar (`ios/docs/BACKEND_PLAN.md`), atualizar a Política e as respostas de App Privacy **antes** do build que coleta dados novos.
