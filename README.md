# deytools
deydoux's toolbox in a Docker image

## Install
```bash
touch ~/.deytools_history
echo 'alias deytools="docker run -it --rm -v ~/.deytools_history:/root/.zsh_history -v .:/root/workspace ghcr.io/deydoux/deytools:latest"' >> ~/.zshrc
echo 'alias deytools="docker run -it --rm -v ~/.deytools_history:/root/.zsh_history -v .:/root/workspace ghcr.io/deydoux/deytools:latest"' >> ~/.bashrc
```
