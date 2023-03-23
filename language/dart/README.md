- [Formatting](#formatting)
- [Directory Structure](#directory-structure)
- [Resources](#resources)

# Formatting

```dart
class MessageView extends StatelessWidget {
  final Message message;

  const MessageView({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            '${message.sender.name} to ${message.receiver.name}',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          SelectableText(
            message.content,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
```

Add trailing commas `foo(a,)` to parameter list, argument list, and collection
literals would make Dart formatter put each item in the collection on a separate
line

# Directory Structure

- [Type](type/README.md): type system
- [Cascade](Cascade.md)
- [Literals](Literals.md)
- [Module](Module.md)
- [Null](Null.md)
- [Operators](Operators.md)
- [Variables](Variables.md)

# Resources

- [Official Website](https://dart.dev)
