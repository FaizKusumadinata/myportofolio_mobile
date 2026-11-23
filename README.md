# myportofolio_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


### Tugas 7

1. Pada Flutter, widget tree adalah struktur yang menggambarkan hubungan antar-widget dalam sebuah aplikasi. Widget tree menggambarkan hubungan hierarkis antara widget-widget. Sebuah widget dapat memiliki banyak child, tetapi hanya satu parent. Juga terdapat sebuah widget yang menjadi root. Sebuah widget anak dapat menjadi stateless ataupun stateful dalam hubungannya dengan widget parentnya. Widget anak yang stateless merupakan widget statis yang hanya dapat berubah mengikuti perubahan yang dialami oleh widget parent, sedangkan widget anak yang stateful berperilaku secara dinamis dengan sendirinya.

2. Terdapat lima widget yang digunakan pada aplikasi ini, yakni MyApp, MyHomePage, InfoCard, ItemHomePage, dan ItemCard. Widget yang menjadi root adalah widget MyApp. MyHomePage merupakan widget yang menampilkan widget-widget lain. InfoCard merupakan card stateless yang hanya menyimpan info yang sudah dituliskan pada kode. ItemHomePage merupakan container dinamis untuk menyimpan deret kartu yang berisi ItemCard.

3. Widget MaterialApp umum digunakan sebagai widget root karena dengan widget tersebut, developer dapat menggunakan widget-widget yang sudah disediakan Flutter SDK, seperti StatelessWidget, StatefulWidget, AppBar, dan Scaffold.

4. Stateless widget adalah widget yang hanya dapat berubah mengikuti perubahan yang dialami oleh widget parentnya, sedangkan  Stateful Widget dapat berubah dengan sendirinya. Stateless widget digunakan ketika diperlukan widget yang bersifat statis sedangkan Stateful widget digunakan ketika diperlukan widget yang bersifat lebih dinamis.

5. BuildContext merupakan class yang dapat digunakan ketika ingin memberikan data dari sebuah widget parent kepada widget anaknya.

6. Hot reload akan meload ulang perubahan kode dan membangun ulang tree widget, tetapi tidak menjalankan ulang main() sehingga kondisi aplikasi terjaga, sedangkan hot restart meload ulang semuanya, termasuk main(). Hot restart juga akan mengembalikan state dari sebuah widget ke state defaultnya jika statenya telah diubah sebelum di restart. Hot reload dilakukan ketika kode yang diubah berada diluar main(), sedangkan hot restart dilakukan ketika terdapat kode pada main() yang diubah.

AI DISCLOSURE.
Pengerjaan tugas 7 ini tidak menggunakan AI apapun dan sumber yang digunakan adalah Tutorial 9 dari situs PBP, dokumentasi resmi Flutter, dan StackOverflow.

### Tugas 8

1. Metode Navigator.push() menambahkan route baru ke dalam stack routing Navigator, Navigator.pushReplacement() menghapus sebuah route dari tampilan pengguna dan menampilkan route lain, dan Navigator.pop() menghapus route teratas dari stack routing. Membuka formulir dari kartu aksi dilakukan menggunakan Navigator.push(). Adapun opsi Home pada drawer menggunakan Navigator.pushReplacement() untuk menghapus route dan menggantinya dengan routing ke laman Home.

2. Scaffold, AppBar, dan Drawer membantu menjaga struktur halaman tetap konsisten dengan menyediakan bagian-bagian aplikasi yang dapat digunakan ulang oleh laman-laman yang berbeda-beda, sehingga memberikan tampilan yang konsisten. Sebagai contoh, pada aplikasi myportofolio, tersedia warna primer dan sekunder pada main.dart yang dapat digunakan kembali oleh laman-laman lain.

3. Tata letak tersebut dipilih karena merupakan tata letak yang memberi kemudahan pengguna ketika membaca dan mengisi informasi pada formulir. Adapun widget pengatur jarak dan penggulir berguna untuk mengantisipasi perubahan layar pengguna. Kedua widget tersebut memastikan tampilan tetap tampak rapi dan dapat digunakan meskipun ukuran tampilan berubah.

4. Method validate() merupakan method yang digunakan untuk memanggil fungsi validator() pada kelas FormState yang berguna untuk menvalidasi setiap input pada formulir. Adapun GlobalKey<FormState> merupakan key unique yang dimiliki oleh sebuah elemen dan dapat menentukan akses elemen-elemen lain ke elemen tersebut.

AI DISCLOSURE.
Pengerjaan tugas 8 ini tidak menggunakan AI apapun dan sumber yang digunakan adalah Tutorial 9 dari situs PBP, dokumentasi resmi Flutter, dan StackOverflow.