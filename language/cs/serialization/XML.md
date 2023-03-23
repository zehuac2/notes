# Overview

## Serializer

```cs
var serializer = new XmlSerializer(typeof(Recipe));
```

# Customization

```cs
using System;
using System.Xml.Serialization;

[Serializable]
public class Ingredient
{
  [XmlElement(ElementName = "name")]
  public string Name { get; set; } = "";
  public int Amount = 1;
}
```
