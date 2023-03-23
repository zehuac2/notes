# Writing Modules

```hs
module Name
(
  publicItem1,
  publicItem2
  -- All exported items of Other will be part of module "Name"
  module Other,
) where

-- module content
```

- **Module and files**:
  - Module name **must match file names**
  - Each file can only have one module
- **Module names must be in PascalCase**
- Public items must be placed in `()`

# Using Modules

```hs
-- every public item will be available
import Data.List

-- every public items in () will be available
import Data.List (items...)

-- every public items except those in () will be available
import Data.List hiding (items...)

-- every items will be available as List.<item>
import qualified Data.List

-- every items will be available as L.<item>
import qualified Data.List as L
```
