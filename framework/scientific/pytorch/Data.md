# Input

## Data Loader

`torch.utils.data.DataLoader`

```py
torch.utils.data.DataLoader.__init__(
  self,
  dataset: torch.utils.data.Dataset,
  batch_size: int = 1,
  shuffle: bool = False)
```

Create a data loader from a specified `dataset`

- `batch_size`: how many elements to give to the neural network at a time
- `shuffle`: do we want to shuffle the input data

`dataset` don't have to be subclass of `torch.utils.data.Dataset`:

- `numpy.ndarray`'s first dimension would be used to index, and the rest of the
  dimensions will be put into a single tensor
- `list`'s first dimension would be used to index, and each of the dimension
  will be put into a tensor
