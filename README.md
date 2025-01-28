# X Printer Thermal Web

A package for printing thermal receipts on web using USB.

## Usage

--

### main.dart

Use `html tags` (such as: `<p>, <h1>, <h2>, ... etc`) to style the content you will print

```dart
final _printer = XPrinterThermalWeb();

void _onPrint() {
  var data = <String>[];
  data.add("<h1>This is a Header</h1>");
  for (var i = 0; i < 3; i++) {
    data.add("<p>data-$i</p>");
  }
  _printer.printHtmlString(data: data);
}
```

--

## Driver

if your thermal printer is not detected 
or you need a driver for your printer, 
you can download it through this 
[link](https://github.com/mohbasirudin/driver_printer_thermal).