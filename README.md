# Configuration Files Repository

This repository contains configuration files for setting up a development environment on a 2024 MacBook Air M2 with 16GB of RAM. The setup includes configurations for Zsh, Neovim, tmux, iTerm2, and oh-my-zsh, leveraging Homebrew for installation. Apart from iTerm2, the configurations should work on Linux systems as well. Windows configuration is untested.

## Who is this for?

This configuration is designed for developers seeking a powerful and customizable development environment that is concise, dark mode themed, and minimalistic, tailored for mobile and full-stack web development.

## Why does this exist?

This repository ensures that my development environment is easy to replicate in the worst-case scenario of complete data loss. I made it public so that others can benefit from it.

## Linux Users

Use your preferred package manager to install the packages listed in the installation section.

## Table of Contents

- [Zsh (shell) Configuration](#zsh)
- [Neovim (editor) Configuration](#neovim)
- [tmux (terminal multiplexer) Configuration](#tmux)
- [iTerm2 (terminal emulator) Configuration](#iterm2)
- [oh-my-zsh (shell framework) Configuration](#oh-my-zsh)
- [Additional Configurations](#additional-configurations)
  - [fzf (File Search)](#fzf)
  - [zoxide (Better cd)](#zoxide)
  - [thefuck (Command Correction)](#thefuck)
- [Other Applications Used](#other-applications-used)
  - [Developer Tools](#developer-tools)
  - [Browsers](#browsers)
  - [Other](#other)
- [Contribution](#contribution)
- [License](#license)

## Zsh

1. **Install Zsh**:

    ```sh
    brew install zsh
    ```

2. **Install [`oh-my-zsh`](https://github.com/ohmyzsh/ohmyzsh)**:

    ```sh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

3. **Install Powerlevel10k**:

    ```sh
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    ```

4. **Install Plugins**:
    - **Auto Suggestions**:

        ```sh
        git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
        ```

    - **Syntax Highlighting**:

        ```sh
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
        ```

5. **Update the `.zshrc` file**: Replace contents of `~/.zshrc` with the contents of `.zshrc` in this repository.

6. **Reload the `.zshrc` file**:

    ```sh
    source ~/.zshrc
    ```

    Alternatively, you can just restart your terminal.

## [Neovim](https://neovim.io)

### Neovim Installation

1. **Install Neovim**:

    ```sh
    brew install neovim
    ```

2. **Copy the Neovim configuration files**: *(Coming Soon)*

## [tmux](https://github.com/tmux/tmux/wiki)

### tmux Installation

1. **Install tmux**:

    ```sh
    brew install tmux
    ```

2. **Update the tmux configuration file**: Replace contents of `~/.tmux.conf` with the contents of `.tmux.conf` in this repository.

## [iTerm2](https://iterm2.com/)

### iTerm2 Installation

1. **Download and install iTerm2** from [here](https://iterm2.com/downloads.html).

2. **Import iTerm2 preferences**:
    - Download or copy the iTerm2 configuration files from this repository.
    - Go to `Preferences` > `General` > `Preferences`.
    - Check `Load preferences from a custom folder or URL`.
    - Select the path to your iTerm2 configuration files.

## [oh-my-zsh](https://ohmyz.sh/)

Configuration for `oh-my-zsh` is included in the Zsh section above. Please refer to it for details on installation and setup.

## Additional Configurations

### [fzf](https://github.com/junegunn/fzf)

#### fzf Installation

1. **Install fzf**:

    ```sh
    brew install fzf
    ```

2. **Add the following to your `.zshrc` file**:

    ```sh
    source <(fzf --zsh)
    ```

### [zoxide](https://github.com/ajeetdsouza/zoxide)

1. **Install zoxide**:

    ```sh
    brew install zoxide
    ```

2. **Add the following to your `.zshrc` file**:

    ```sh
    eval "$(zoxide init zsh)"
    ```

### [Thefuck](https://github.com/nvbn/thefuck)

1. **Install thefuck**:

    ```sh
    brew install thefuck
    ```

2. **Add the following to your `.zshrc` file**:

    ```sh
    eval $(thefuck --alias)
    eval $(thefuck --alias FUCK)
    ```

## Other Applications Used

### Developer Tools

- [GitKraken](https://www.gitkraken.com/): A Git GUI, useful for complex Git workflows.
- [Postman](https://www.postman.com/): For API testing.
- [Android Studio](https://developer.android.com/studio): For Android development.
- [Xcode](https://developer.apple.com/xcode/): For iOS development.

### Browsers

- [Brave](https://brave.com/): Preferred for web development due to its better caching experience compared to Chrome.
- [Firefox](https://www.mozilla.org/en-US/firefox/new/): Used for testing to ensure browser compatibility.
- [Safari](https://www.apple.com/safari/): My daily driver.

### Other

- [Rectangle Pro](https://rectangleapp.com/): A window management app for macOS.

## Contribution

Feel free to contribute by creating pull requests or reporting issues to improve this configuration.

## License

This project is free for any use and modification.
