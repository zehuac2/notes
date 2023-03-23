```cs
using System.Threading.Tasks;

class Program
{
    static async Task Main(string[] args)
    {
        await Sleep();
        Console.WriteLine("Main returns");
    }
}
```

Program with async main function would not terminate upon the first async call
site, like what would happen in a non-async main function

When the above program is executed, the following would be printed

```
Output of Sleep()
Main returns
```
