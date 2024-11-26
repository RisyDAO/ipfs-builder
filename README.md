# Risy DAO IPFS Website Builder

A tool developed by Risy DAO to convert websites into single HTML files for IPFS deployment. This project enables decentralized web hosting by creating self-contained, portable web pages that can be easily hosted on IPFS.

## 🌟 Features

- One-click website conversion to single HTML file
- Automatic resource embedding (images, CSS, fonts)
- Smart URL handling (both relative and absolute)
- Secure authentication support
- Comprehensive logging system
- Local and remote website compatibility
- IPFS-ready output

## 🛠️ Prerequisites

- Python 3.x
- Required packages (automatically installed):
  - requests
  - beautifulsoup4
  - lxml
  - termcolor

## 🚀 Quick Start

1. Clone the repository:
```
git clone https://github.com/RisyDAO/ipfs-builder
cd ipfs-builder
```

2. Install dependencies:
```
pip install -r requirements.txt
```

3. Run the builder:
```
./build_ipfs_website.sh
```

## ⚙️ Configuration

The build script (`build_ipfs_website.sh`) uses the following default configuration:
```
WEBSITE_URL="https://risy.io"
OUTPUT_DIR="./Risy DAO"
OUTPUT_FILE="${OUTPUT_DIR}/index.html"
```

## 🔧 Advanced Usage

For more control, use the Python script directly:
```
python webpage2html.py -s -o output.html https://risy.io
```

Available options:
- `-s`: Preserve JavaScript
- `-q`: Quiet mode
- `-k`: Skip SSL verification
- `-u`: HTTP auth username
- `-p`: HTTP auth password

## 🤝 Contributing

We welcome contributions from the community! Feel free to:
- Submit bug reports
- Propose new features
- Create pull requests
- Improve documentation

## 📜 License

This project is based on [webpage2html](https://github.com/zTrix/webpage2html) and is licensed under the Star And Thank Author License (SATA).

Copyright (c) 2024 Risy DAO
Copyright (c) 2014 zTrix(i@ztrix.me)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

1. The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

2. **Star First**: You shall star/+1/like the original project first:
   - [webpage2html](https://github.com/zTrix/webpage2html)
   - [Risy DAO IPFS Website Builder](https://github.com/RisyDAO/ipfs-builder)

3. **Show Appreciation**: Consider thanking the authors through:
   - Reporting bugs or issues
   - Contributing to the project
   - Sharing the project with others
   - Sending a thank-you message to the authors

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY.

## 🔗 Links

- [Risy DAO Website](https://risy.io)
- [Risy DAO X(Twitter)](https://x.com/RisyDAO)
- [Risy DAO Discord](https://discord.gg/zuSBq2XBjc)
- [Original webpage2html Project](https://github.com/zTrix/webpage2html)

## 💫 About Risy DAO

Risy DAO is building tools for the decentralized web. Our mission is to make web3 technologies accessible to everyone through innovative solutions and user-friendly tools.

## 🆘 Support

Need help? Join our [Discord community](https://discord.gg/zuSBq2XBjc) or create an issue on GitHub.

---

Built with ❤️ by Risy DAO