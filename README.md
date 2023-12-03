# rust-embedding-wio-terminal
「基礎から学ぶ組み込みRust」をやるリポジトリ

## 商品ページ
https://www.c-r.com/book/detail/1403

## サポートページ
https://github.com/tomoyuki-nakabayashi/Embedded-Rust-from-Basics

## wsl2でUSBデバイスを扱えるようにする

参考
- https://learn.microsoft.com/ja-jp/windows/wsl/connect-usb
- https://github.com/dorssel/usbipd-win/wiki/WSL-support


1. usbipd-winのインストール

https://github.com/dorssel/usbipd-win/releases

上から最新のインストーラを取得し実行する

2. パッケージをインストールする

```bash
sudo apt install linux-tools-virtual hwdata
sudo update-alternatives --install /usr/local/bin/usbip usbip `ls /usr/lib/linux-tools/*/usbip | tail -n1` 20
```