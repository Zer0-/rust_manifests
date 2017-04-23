This is a repo with manifest files from static.rust-lang.org
It only exists to facilitate building Rust automatically on my hydra server,
which doesn't like to download http urls with the exception of git repos.

The manifest directory contains the files for rust channels beta, nightly, and stable

update.sh will update these files by simply pulling the urls from urls.txt
