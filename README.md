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

## [Zsh](https://zsh.sourceforge.io)

Zsh is a shell designed for interactive use, although it is also a powerful scripting language. Many of the useful features of bash, ksh, and tcsh were incorporated into zsh; many original features were added.

1. **Install Zsh**:

    ```sh
    brew install zsh
    ```

2. **Install [`oh-my-zsh`](https://github.com/ohmyzsh/ohmyzsh)**: oh-my-zsh is a delightful, open source, community-driven framework for managing your Zsh configuration.

    ```sh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

3. **Install [Powerlevel10k](https://github.com/romkatv/powerlevel10k)**: Is a great theme for Zsh that adds a lot of useful features, such as a customizable prompt, a git-aware prompt, and a ton of other features.

    ```sh
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    ```

4. **Install Plugins**:
    - **[Auto Suggestions](https://github.com/zsh-users/zsh-autosuggestions)**:

        ```sh
        git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
        ```

    - **[Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)**:

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

Neovim is a fork of Vim, with a focus on modern features and performance. It is designed to be used as a text editor, but it also has a lot of other features, such as a GUI, a terminal, and a job control system.

### Neovim Installation

1. **Install Neovim**:

    ```sh
    brew install neovim
    ```

2. **Copy the Neovim configuration files**: *(Coming Soon)*

## [tmux](https://github.com/tmux/tmux/wiki)

tmux is a terminal multiplexer that allows you to split your terminal window into multiple panes, each of which can be used to run a separate program in a shell. This makes it easy to run multiple programs side by side, and it allows you to switch between them easily.

### tmux Installation

1. **Install tmux**:

    ```sh
    brew install tmux
    ```

2. **Update the tmux configuration file**: Replace contents of `~/.tmux.conf` with the contents of `.tmux.conf` in this repository.

## [iTerm2](https://iterm2.com/)

### iTerm2 Installation

iTerm2 is a powerful terminal emulator for macOS that is designed to be used with the macOS Terminal application. It is highly customizable and has a lot of features, such as a tabbed interface, a split pane, and a lot of other things.

1. **Download and install iTerm2** from [here](https://iterm2.com/downloads.html).

2. **Import iTerm2 preferences**:
    - Download or copy the iTerm2 configuration files from this repository.
    - Go to `Preferences` > `General` > `Preferences`.
    - Check `Load preferences from a custom folder or URL`.
    - Select the path to your iTerm2 configuration files.

## [oh-my-zsh](https://ohmyz.sh/)

Configuration for `oh-my-zsh` is included in the Zsh section above. Please refer to it for details on installation and setup.

## Additional Configurations

## Enable Touch ID for sudo

1. **Open the proper file**:

    ```sh
    sudo nano /etc/pam.d/sudo
    ```

2. **Add the following to the file**:

    ```sh
    auth sufficient pam_tid.so
    ```

3. **Save and Exit**: Press `Ctrl + X` (exit) and `Y` (save) to save the file. Then press `Enter` to exit.

### [fzf](https://github.com/junegunn/fzf)

fzf is a command-line fuzzy finder. It is highly customizable and has a lot of features, such as a preview window, a multi-select mode, and a lot of other things.

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

zoxide is a command-line tool that allows you to easily navigate your filesystem.

1. **Install zoxide**:

    ```sh
    brew install zoxide
    ```

2. **Add the following to your `.zshrc` file**:

    ```sh
    eval "$(zoxide init zsh)"
    ```

### [Thefuck](https://github.com/nvbn/thefuck)

thefuck is a command-line tool that helps you to correct your previous command.

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

- [GitKraken Free Version](https://www.gitkraken.com/): A Git GUI, useful for complex Git workflows.
- [Postman](https://www.postman.com/): For API testing.
- [Android Studio](https://developer.android.com/studio): For Android development.
- [Xcode](https://developer.apple.com/xcode/): For iOS development.
- [shotrr](shotrr.cc): Shottr is a tiny and fast mac screenshot tool with annotations, scrolling screenshots and cloud upload capabilities. Built with love and optimized for Apple silicon.
[ImageOptim](https://imageoptim.com/): ImageOptim is a free, powerful, high-quality image optimizer for Mac.
[Latest](https://max.codes/latest/): Latest is a free and open source app for macOS that checks if all your apps are up to date. Get a quick overview of which apps changed and what changed and update them right away.
[AdGuard for Safari](https://apps.apple.com/us/app/adguard-for-safari/id1440147259?mt=12): AdGuard is a free and open source ad blocker for Safari, iOS and macOS.
[]

### Browsers

- [Brave](https://brave.com/): Preferred for web development due to its better caching experience compared to Chrome.
- [Firefox](https://www.mozilla.org/en-US/firefox/new/): Used for testing to ensure browser compatibility.
- [Safari](https://www.apple.com/safari/): My daily driver.

### Other

- [Rectangle Pro](https://rectangleapp.com/): A window management app for macOS.
- [Velja](https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://apps.apple.com/us/app/velja/id1607635845%3Fmt%3D12&ved=2ahUKEwjy_7KlzJ-HAxVSwskDHa_kB8MQFnoECBgQAQ&usg=AOvVaw2aCmBSs7FhQCaEAB2bbQtc): A tool for select broswer to launch links.
- [Dropover](https://dropoverapp.com): An amazing clipboard
- [Later](https://github.com/alyssaxuu/later?tab=readme-ov-file#installing-later): A productivity app for macOS that lets you save window sessions allowing for easy closing and re-opening of workspaces.
- [Raycast Free Version](https://www.raycast.com/): A collection of powerful productivity tools all within an extendable launcher. Fast, ergonomic and reliable. AKA better Spotlight.

## Contribution

Feel free to contribute by creating pull requests or reporting issues to improve this configuration.

## License

This project is free for any use and modification.
