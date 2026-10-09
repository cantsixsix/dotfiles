# git-hooks

Hooks de Git compartilhados por todos os repositórios da máquina.

| Hook | O que faz |
|---|---|
| `pre-commit` | Bloqueia commit de `.env`, keystores (`.keystore`, `.jks`), chaves (`.pem`, `.key`, `id_rsa`…) e, se o [gitleaks](https://github.com/gitleaks/gitleaks) estiver instalado, chaves/senhas dentro dos arquivos |

## Instalar

```bash
git config --global core.hooksPath ~/dotfiles/git-hooks
```

Opcional, para checar também o conteúdo dos arquivos: instalar o gitleaks (`brew install gitleaks`, ou baixar em *Releases* no GitHub dele).

Os repositórios também têm o workflow **Segredos** no GitHub Actions, que faz a mesma checagem em cada push — este hook pega o problema antes, no seu computador, quando ainda nada ficou público.
