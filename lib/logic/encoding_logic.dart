import 'dart:convert' show utf8;

decodingMethod() {
  // List<String> str = ['a', 'i', 'd', 'a', 'i', 'y', 'm'];
  // int n = str.length;
  // List cypher = [n];
  String ai = "adf";
  print(ai.codeUnits);
// for (var i in i<n) {
// }
}
// decodingMethod() {
//   // List<String> str = ['a', 'i', 'd', 'a', 'i', 'y', 'm'];
//   // int n = str.length;
//   // List cypher = [n];
//   String ai = "adf";
//   print(ai.codeUnits);
// // for (var i in i<n) {
// // }
// }


// String ai = "adf";
//   print(ai.codeUnits)


// String decode(List<int> codeUnits, {bool? allowMalformed}) {
//   // Switch between const objects to avoid allocation.
//   Utf8Decoder decoder = allowMalformed ?? _allowMalformed
//       ? const Utf8Decoder(allowMalformed: true)
//       : const Utf8Decoder(allowMalformed: false);
//   return decoder.convert(codeUnits);
// }

 
// int main() {
//     char str[] = {'a', 'i', 'd', 'a', 'i', 'y', 'm'};
//     const int n = sizeof(str) / sizeof(char);
//     char cypher[n];
 
//     for (int i = 0; i < n; i++) {
//         int unicode = (int)str[i];
 
//         unicode -= 97;
 
//         unicode += 2;
 
//         unicode %= 26;
 
//         unicode += 97;
 
//         cypher[i] = unicode;
//         cout << cypher[i];
//     }
// }