# TUGAS PBP COACH-GEAR-MOBILE
Nama: Muhammad Salman Fahri<br>
NPM: 2406343514<br>
Kelas: PBP F<br>

<details align="justify">
    <summary><b>Tugas 7</b></summary>

## Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.

Dalam Flutter, **widget tree** adalah struktur hierarki yang menggambarkan bagaimana widget disusun untuk membentuk tampilan aplikasi.  
Setiap elemen UI (seperti teks, tombol, gambar, dan layout) merupakan **widget** yang tersusun secara bersarang (nested) inilah yang disebut *widget tree*.

Hubungan **parent-child (induk-anak)** menggambarkan bagaimana satu widget dapat membungkus widget lainnya:
- **Parent (induk)** adalah widget yang membungkus atau mengatur posisi, ukuran, dan perilaku dari widget lain.
- **Child (anak)** adalah widget yang berada di dalam parent dan akan ditampilkan sesuai aturan layout parent-nya.


## Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.

Berikut daftar widget yang digunakan dalam proyek **Coach Gear** beserta fungsinya:

- **MaterialApp** → Widget utama yang menjadi root aplikasi Flutter dan menyediakan konfigurasi global seperti tema, warna, dan navigasi.
- **Scaffold** → Menyediakan struktur dasar halaman seperti `AppBar`, `body`, dan `floatingActionButton`.
- **AppBar** → Menampilkan bagian header di atas layar berisi judul aplikasi.
- **Padding** → Memberikan jarak di sekitar widget agar tampilan tidak menempel pada tepi layar.
- **Column** → Mengatur widget secara vertikal dari atas ke bawah.
- **Row** → Mengatur widget secara horizontal dari kiri ke kanan.
- **Center** → Menempatkan widget di posisi tengah parent-nya.
- **GridView.count** → Menampilkan daftar widget dalam bentuk grid dengan jumlah kolom tetap.
- **Card** → Membuat elemen tampilan berbentuk kartu dengan bayangan dan sudut melengkung.
- **Container** → Wadah fleksibel yang bisa digunakan untuk mengatur ukuran, padding, margin, dan warna latar belakang.
- **Text** → Menampilkan teks statis pada layar.
- **Icon** → Menampilkan ikon dari pustaka Material Design.
- **Material** → Memberikan efek material (seperti warna dasar dan ripple effect) pada elemen yang dapat ditekan.
- **InkWell** → Widget yang mendeteksi interaksi sentuhan (tap) dan menampilkan efek gelombang (ripple) saat ditekan.
- **SnackBar** → Menampilkan notifikasi singkat di bagian bawah layar.
- **SizedBox** → Memberikan jarak antar widget dengan tinggi atau lebar tertentu.

Selain itu, proyek ini juga memiliki **widget kustom (custom widgets)**:
- **InfoCard** → Menampilkan informasi seperti NPM, Nama, dan Kelas dalam bentuk kartu kecil.
- **ItemHomepage** → Model data yang menyimpan informasi nama tombol, ikon, dan warna.
- **ItemCard** → Widget untuk menampilkan tombol menu dalam grid (seperti “See Football News”, “Add News”, dan “Logout”).


## Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.

Widget **MaterialApp** berfungsi sebagai **entry point (pintu masuk utama)** untuk aplikasi Flutter yang menggunakan desain **Material Design**.  
Widget ini menyediakan konfigurasi global yang penting, seperti:

- **title** → Nama aplikasi yang akan muncul di task manager atau judul jendela.
- **theme** → Menentukan warna, font, dan gaya visual aplikasi secara keseluruhan.
- **home** → Menentukan halaman awal (widget pertama) yang akan ditampilkan ketika aplikasi dijalankan.
- **routes** dan **navigator** → Mengatur navigasi antar halaman dalam aplikasi.
- **debugShowCheckedModeBanner** → Menentukan apakah banner “debug” akan ditampilkan atau tidak.

Widget ini sering digunakan sebagai **widget root** karena:
1. MaterialApp membungkus seluruh struktur aplikasi dan memberikan konteks tema serta navigasi ke semua widget di bawahnya.
2. Semua widget lain seperti `Scaffold`, `AppBar`, `Text`, dan `Button` memerlukan konteks MaterialApp agar dapat mewarisi gaya dan perilaku Material Design.
3. Dengan menempatkan MaterialApp di bagian paling atas (root), seluruh tampilan dan logika aplikasi dapat diatur secara konsisten dari satu tempat.


## Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?

**StatelessWidget** dan **StatefulWidget** adalah dua jenis widget utama di Flutter yang menentukan apakah suatu widget dapat berubah seiring waktu atau tidak.

### StatelessWidget
- Tidak memiliki *state* (keadaan) yang bisa berubah setelah dibangun.
- Digunakan untuk tampilan yang **statis**, artinya datanya tidak berubah selama aplikasi berjalan.
- Contoh: `Text`, `Icon`, `Container`, `Column`, `Row`.


## Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?

**BuildContext** adalah sebuah objek yang digunakan Flutter untuk mengetahui **posisi suatu widget dalam widget tree** serta **mengakses data yang terkait dengan widget tersebut**.

### 🔍 Fungsi dan Pentingnya BuildContext
- Menyediakan **informasi posisi dan hubungan hierarki** antara widget-parent dan widget-child.  
- Digunakan untuk **mengakses data atau fungsi dari widget lain** di atasnya dalam widget tree (misalnya `Theme.of(context)` atau `Navigator.of(context)`).
- Tanpa `BuildContext`, Flutter tidak dapat mengetahui di mana widget berada atau bagaimana cara menampilkan dan memperbaruinya dengan benar.

### 🧩 Penggunaan dalam metode `build`
Setiap widget (baik StatelessWidget maupun StatefulWidget) memiliki metode `build(BuildContext context)` yang:
- Menerima objek `context` secara otomatis oleh Flutter.
- Menggunakan `context` untuk membangun UI dan mengakses elemen-elemen seperti:
  - **Tema aplikasi** → `Theme.of(context).colorScheme.primary`
  - **Navigasi halaman** → `Navigator.push(context, ...)`
  - **MediaQuery** (ukuran layar) → `MediaQuery.of(context).size`


## Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".

### ⚡ Hot Reload
**Hot reload** adalah fitur di Flutter yang memungkinkan pengembang melihat hasil perubahan kode **secara instan tanpa kehilangan state aplikasi**.  
Ketika hot reload dijalankan:
- Flutter hanya **memuat ulang kode yang diubah** (misalnya tampilan, teks, warna, layout).
- **State (data sementara)** di dalam aplikasi tetap dipertahankan.
- Sangat berguna untuk mempercepat proses pengembangan UI karena perubahan langsung terlihat tanpa harus memulai ulang aplikasi.

🧠 **Contoh:**
Jika kamu sedang membuat aplikasi counter dan nilai counter sudah mencapai `5`, lalu kamu mengubah warna tombol dan melakukan **hot reload**, tampilan tombol berubah tetapi nilai counter tetap `5`.

### 🔁 Hot Restart
**Hot restart** melakukan pemuatan ulang aplikasi **dari awal**, tetapi lebih cepat dibanding menjalankan ulang aplikasi secara penuh.  
Ketika hot restart dijalankan:
- Flutter akan **memulai ulang seluruh aplikasi**, termasuk menghapus semua state yang tersimpan.
- Semua variabel kembali ke nilai awal seperti saat pertama kali dijalankan.

🧠 **Contoh:**
Jika kamu melakukan **hot restart** saat counter bernilai `5`, maka nilai counter akan kembali menjadi `0` karena seluruh state direset.

### 🔍 Perbedaan Utama
| Aspek | Hot Reload | Hot Restart |
|-------|-------------|-------------|
| Kecepatan | Sangat cepat | Lebih lambat dari reload, tapi lebih cepat dari full restart |
| State aplikasi | Tetap dipertahankan | Dihapus dan direset ke awal |
| Perubahan kode yang bisa diterapkan | UI, layout, teks, warna | Semua jenis perubahan (termasuk variabel global dan struktur program) |
| Kapan digunakan | Saat mengubah tampilan atau layout | Saat mengubah logika utama atau struktur aplikasi |

➡️ **Kesimpulan:**  
Gunakan **hot reload** untuk mempercepat iterasi tampilan, dan **hot restart** ketika perubahan besar pada kode membutuhkan inisialisasi ulang seluruh aplikasi.

</details>

<details align ="justify">
    <summary><b>Tugas 8</b></summary>

### 🧭 1. Apa perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()` pada Flutter?  
**Jawaban:**  
`Navigator.push()` digunakan untuk **menambahkan halaman baru di atas stack halaman yang sudah ada**, sehingga pengguna masih bisa kembali ke halaman sebelumnya menggunakan tombol “back”.  
Sementara `Navigator.pushReplacement()` akan **mengganti halaman saat ini dengan halaman baru**, sehingga pengguna **tidak bisa kembali** ke halaman sebelumnya.  

**Contoh penggunaan di aplikasi *Football Shop*:**  
- `Navigator.push()` cocok digunakan saat pengguna membuka **detail produk**, agar bisa kembali ke halaman daftar produk.  
- `Navigator.pushReplacement()` lebih cocok saat berpindah ke **halaman utama (Home)** dari halaman login atau splash screen, karena halaman sebelumnya tidak perlu diakses lagi.

---

### 🧱 2. Bagaimana memanfaatkan hierarchy widget seperti `Scaffold`, `AppBar`, dan `Drawer` untuk membangun struktur halaman yang konsisten di seluruh aplikasi?  
**Jawaban:**  
`Scaffold` menyediakan kerangka dasar untuk setiap halaman, seperti area konten utama, `AppBar` di bagian atas, dan `Drawer` di sisi kiri.  
Dengan menggunakan struktur yang sama di setiap halaman (`Scaffold` + `AppBar` + `Drawer`), aplikasi akan terlihat **konsisten dan mudah digunakan**.  

**Contoh di aplikasi *Football Shop*:**  
Setiap halaman seperti *Home*, *Tambah Produk*, dan *Daftar Produk* menggunakan `Scaffold` dengan:
- `AppBar` berisi judul halaman seperti “Football Shop”  
- `Drawer` (`LeftDrawer`) berisi navigasi ke halaman lain  

Hal ini membuat navigasi antarhalaman terasa seragam dan profesional.

---

### 🧩 3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti `Padding`, `SingleChildScrollView`, dan `ListView` saat menampilkan elemen-elemen form?  
**Jawaban:**  
Widget layout ini membantu mengatur tampilan agar **nyaman, responsif, dan tidak overflow**:
- `Padding`: memberi jarak antar-elemen agar tampilan tidak terlalu rapat.  
- `SingleChildScrollView`: memungkinkan pengguna **scroll** saat isi form terlalu panjang untuk layar.  
- `ListView`: menampilkan kumpulan widget secara vertikal dan bisa discroll otomatis.  

**Contoh di aplikasi *Football Shop*:**  
Pada halaman *Tambah Produk*, seluruh elemen form (`TextFormField`, `DropdownButton`, dan `ElevatedButton`) dibungkus dengan `SingleChildScrollView` agar tetap bisa digulir meskipun keyboard terbuka.

---

### 🎨 4. Bagaimana menyesuaikan warna tema agar aplikasi *Football Shop* memiliki identitas visual yang konsisten dengan brand toko?  
**Jawaban:**  
Warna tema dapat disesuaikan menggunakan `ThemeData` di file utama (`main.dart`).  
Misalnya, warna dominan biru tua (`Colors.indigo`) dipilih untuk mencerminkan profesionalitas dan kepercayaan.  

Dengan pengaturan ini, seluruh komponen seperti tombol, AppBar, dan ikon akan tampil konsisten sesuai warna brand *Football Shop*.
</details>