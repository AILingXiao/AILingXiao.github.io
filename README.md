# Xiao Ling (凌晓) - Personal Academic Homepage

A personal academic homepage built with Jekyll, showcasing research publications, projects, and professional experiences.

## 🚀 Quick Start

### Prerequisites

1. **Install Ruby** (version 2.7 or higher recommended)
   - **Windows**: Download from [RubyInstaller](https://rubyinstaller.org/) (choose Ruby+Devkit version)
   - **macOS**: `brew install ruby`
   - **Linux**: `sudo apt-get install ruby-full`

2. **Install Bundler**
   ```bash
   gem install bundler
   ```

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/ailingxiao/ailingxiao.github.io.git
   cd ailingxiao.github.io
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Run the local server**
   ```bash
   bundle exec jekyll serve
   ```
   Or simply run:
   ```bash
   ./run_server.sh
   ```

4. **View in browser**
   
   Open [http://localhost:4000](http://localhost:4000) in your browser.

### Live Reload (Optional)

For automatic page refresh during development:
```bash
bundle exec jekyll serve --livereload
```

## 📁 Project Structure

```
├── _config.yml          # Site configuration
├── _pages/
│   ├── about.md         # Main homepage
│   └── includes/        # Content sections
│       ├── intro.md     # Introduction
│       ├── pub.md       # Publications
│       ├── pro.md       # Projects
│       ├── honers.md    # Honors & Awards
│       ├── others.md    # Experience & Education
│       └── news.md      # News updates
├── _sass/               # SCSS stylesheets
├── assets/
│   ├── css/main.scss    # Main stylesheet
│   ├── fonts/           # Custom fonts
│   └── js/              # JavaScript files
├── images/              # Image assets
├── Chinese-Resume/      # Chinese resume (Typst format)
├── Gemfile              # Ruby dependencies
└── README.md            # This file
```

## ✏️ How to Update Content

- **Personal Info**: Edit `_config.yml`
- **Introduction**: Edit `_pages/includes/intro.md`
- **Publications**: Edit `_pages/includes/pub.md`
- **Projects**: Edit `_pages/includes/pro.md`
- **Honors**: Edit `_pages/includes/honers.md`
- **Experience**: Edit `_pages/includes/others.md`
- **News**: Edit `_pages/includes/news.md`

## 🔧 Troubleshooting

### Common Issues on Windows

1. **SSL Certificate Error**
   ```bash
   set SSL_CERT_FILE=C:\path\to\cacert.pem
   ```

2. **Encoding Issues**
   ```bash
   chcp 65001
   ```

3. **Permission Denied**
   
   Run PowerShell as Administrator.

### Bundle Install Fails

Try updating bundler and reinstalling:
```bash
gem update bundler
bundle install --force
```

## 📄 License

This project is for personal use. Please do not copy the personal information content.

## 🔗 Links

- **Live Site**: [https://ailingxiao.github.io](https://ailingxiao.github.io)
- **Google Scholar**: [Profile](https://scholar.google.com.sg/citations?user=zKbNINcAAAAJ&hl=zh-CN)
- **ORCID**: [0009-0000-1890-2270](https://orcid.org/0009-0000-1890-2270)

