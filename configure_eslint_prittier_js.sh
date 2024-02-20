#!/bin/bash

# Install Prettier ESLint plugin
npm install --save-dev eslint prettier eslint-config-prettier eslint-plugin-prettier

# Create .eslintrc.json configuration file
cat <<EOF > .eslintrc.json
{
  "env": {
    "es6": true
  },
  "parserOptions": {
    "ecmaVersion": 2021,
    "sourceType": "module"
  },
  "extends": [
    "eslint:recommended",
    "plugin:prettier/recommended"
  ],
  "plugins": ["prettier"],
  "rules": {
    // Add any specific rules here
  }
}
EOF

# Create .prettierrc configuration file
cat <<EOF > .prettierrc
{
  "semi": true,
  "singleQuote": true,
  "tabWidth": 2,
  "trailingComma": "none",
  "printWidth": 120,
  "endOfLine": "auto"
}
EOF

# Print success message
echo "ESLint and Prettier configured for JavaScript."
