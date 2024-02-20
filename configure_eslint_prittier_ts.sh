#!/bin/bash

# Install ESLint plugins for TypeScript
npm install --save-dev eslint eslint-plugin-node @typescript-eslint/parser @typescript-eslint/eslint-plugin typescript

# Install Prettier ESLint plugin
npm install --save-dev prettier eslint-config-prettier eslint-plugin-prettier

# Create .eslintrc.json configuration file
cat <<EOF > .eslintrc.json
{
  "env": {
    "es6": true,
    "node": true,
    "es2021": true,
    "browser": true
  },
  "extends": [
    "eslint:recommended",
    "plugin:@typescript-eslint/recommended",
    "plugin:prettier/recommended"
  ],
  "overrides": [],
  "parser": "@typescript-eslint/parser",
  "parserOptions": {
    "ecmaVersion": "latest",
    "sourceType": "module"
  },
  "plugins": [
    "@typescript-eslint",
    "prettier"
  ],
  "rules": {
    "prettier/prettier": "error",
    "no-unused-vars": "warn"
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
echo "ESLint and Prettier configured for TypeScript."
