import { defineConfig } from 'eslint/config';
import markdown from '@eslint/markdown';

export default defineConfig([
  {
    ignores: ['.venv/**'],
  },
  {
    files: ['**/*.md'],
    plugins: {
      markdown,
    },
    rules: {
      'markdown/no-multiple-h1': 'off',
    },
    language: 'markdown/gfm',
    languageOptions: {
      frontmatter: 'yaml',
    },
    extends: ['markdown/recommended'],
  },
]);
