# Yarn Workspace

To use typescript in yarn workspace

1. Have a root tsconfig in project root
2. Have the tsconfig in subprojects extends the root tsconfig
   ```json
   {
     "extends": "../../tsconfig.json"
   }
   ```
