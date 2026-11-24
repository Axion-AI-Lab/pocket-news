#!/bin/sh
# Confere se o site está pronto para publicar.
# Falha enquanto houver campo a preencher (class="todo"), faixa de rascunho (data-draft)
# ou e-mail de exemplo.
cd "$(dirname "$0")" || exit 1
fail=0
for f in index.html termos/index.html privacidade/index.html suporte/index.html; do
  [ -f "$f" ] || { echo "FALTA: $f"; fail=1; continue; }
  n=$(grep -c 'class="todo"\|data-draft\|exemplo\.com' "$f")
  if [ "$n" -gt 0 ]; then echo "PENDENTE: $f ($n linhas)"; fail=1; else echo "OK: $f"; fi
done
[ $fail -eq 0 ] && echo "Pronto para publicar." || echo "Ainda não publique."
exit $fail
