# ISC351 最終課題
## 231060 花田浩紀
### 基本コマンド

docker, docker-compose, nvidia-cudaドライバ, nvidia-container-toolkitをインストール.

`docker-compose up`

でjupyter labをブラウザ上に起動.

kaggleAPIを使う場合は`.env`ファイルを作成し、

```
KAGGLE_USERNAME=<your kaggle username>
KAGGLE_KEY=<your kaggle api key>
```
を設定.

### ファイル概要
`make_folder_and_data_download.ipynb`を順に実行していくと、kaggle上の抽象画データセットをダウロード、リサイズする.

`5-1_2_DCGAN.ipynb`を順に実行すると、上記で用意したデータを用いてDCGANを学習させ、最後のセルで学習したGeneratorで抽象画を生成する.
