const path    = require("path")
const webpack = require("webpack")

module.exports = {
  mode: "development",
  devtool: "source-map",

  entry: {  // エントリポイントを整理
    application: "./app/javascript/application.js",
    article: "./app/javascript/article.js"
  },

  output: {
    filename: "[name].js",
    sourceMapFilename: "[file].map",
    chunkFormat: "module",
    path: path.resolve(__dirname, "app/assets/builds"),
  },

  plugins: [
    new webpack.optimize.LimitChunkCountPlugin({
      maxChunks: 1
    })
  ],

  resolve: {

    modules: [  // 探索パスをプロジェクト内に制限
      path.resolve(__dirname, 'node_modules'),
      'node_modules'
    ],

    alias: {  // インポートを簡潔にするためのエイリアス
      jquery: path.resolve(__dirname, 'node_modules/jquery'),
      },

    symlinks: false  // symlinkを辿らない（WSL/Windows間のパス混乱防止）
  },
}
