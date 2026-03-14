```cs
public class UObject
{
  public int GetInstanceID() { return 0; }
}

public class FastRemovalListBase<T, K> where K : notnull
{
  private List<(T, K)> _list = new List<(T, K)>();
  private Dictionary<K, int> _indices = new Dictionary<K, int>();

  public int Count => _list.Count;

  public void Add(T element, K key)
  {
    _list.Add((element, key));
    _indices.Add(key, _list.Count - 1);
  }

  public void Remove(K key)
  {
    int removeIndex = _indices[key];
    int lastIndex = _list.Count - 1;

    (T last, K lastKey) = _list[lastIndex];
    _indices[lastKey] = removeIndex;

    _list[removeIndex] = _list[lastIndex];
    _list.RemoveAt(lastIndex);
  }

  public T this[int index]
  {
    get
    {
      return _list[index].Item1;
    }
    set
    {
      (T t, K k) = _list[index];
      _list[index] = (value, k);
    }
  }
}

public class UnityFastRemovalList<T> : FastRemovalListBase<T, int> where T : UObject
{
  public void Add(T element)
  {
    base.Add(element, element.GetInstanceID());
  }

  public void Remove(T element)
  {
    base.Remove(element.GetInstanceID());
  }
}
```
