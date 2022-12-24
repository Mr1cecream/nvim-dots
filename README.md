# nvim-dots
My neovim config.


## Requirements
- Neovim 0.8.0+
- git

## Installation

#### Unix
Run this in your terminal:
```bash
git clone https://github.com/Mr1cecream/nvim-dots ~/.config/nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

#### Windows (Powershell)
Run this in your terminal:
```powershell
git clone https://github.com/Mr1cecream/nvim-dots "$env:LOCALAPPDATA\nvim"
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```
