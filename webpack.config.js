const path = require('path');

module.exports = {
    entry: './static/js/ckeditor_custom.js',  // fișierul sursă cu importurile CKEditor
    output: {
        filename: 'ckeditor.js',              // fișierul final bundle
        path: path.resolve(__dirname, 'static/js/build'),
        clean: true                           // curăță build-ul vechi înainte de compilare
    },
    module: {
        rules: [
            {
                test: /\.js$/,
                exclude: /node_modules/,
                use: {
                    loader: 'babel-loader'
                }
            },
            {
                test: /\.css$/i,
                use: ['style-loader', 'css-loader']
            },
            {
                test: /\.(svg|ttf|woff|woff2|eot)$/,
                type: 'asset/resource',
                generator: {
                    filename: 'assets/[hash][ext][query]' // fonturi & icons puse separat
                }
            }
        ]
    },
    resolve: {
        extensions: ['.js']
    },
    performance: {
        hints: false,              // 🔇 fără warninguri de mărime
        maxEntrypointSize: 1024000,
        maxAssetSize: 1024000
    },
    mode: 'production'             // optimizare automată pentru bundle mic
};
