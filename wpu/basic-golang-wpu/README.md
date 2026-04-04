# Belajar Basic Golang by WPU Youtube
Playlist = [Klik disini](https://www.youtube.com/playlist?list=PLFIM0718LjIXOR2Q17vGejgUonuSCxcn5)

## Catatan Belajar

### About Project

**Cara mulai Project**
- mkdir basic-golang-wpu
- cd basic-golang-wpu
- go mod init basic-golang-wpu

**Build project**
- go build
- akan menjadi exe file

**Run project**
- go run main.go

### Print
- Println = Untuk mencetak nilai dengan line baru setelahnya
- Printf = Untuk mencetak nilai dengan format tertentu (ada placeholder nya)

### Tipe data di golang
- Titik koma (;) adalah optional
- Tipe data number
  - integer ( int8, int16, int32, int64 => ...16, ...32, etc. adalah jumlah bitnya)
  - floating point (float32, float64)
- Tipe data boolean
  - true
  - false
- Tipe data string
  - Bersifat immutable (tidak bisa di ubah)
  - disimpan sebagai slice of bytes (kumpulan byte UTF-8)
  - Menggunakan kutip ganda atau backtic ("...", \`...\`)
  - Bisa di operasikan / di gabungkan

### Nilai kosong (nil) dan default
- Value type (punya zero value jelas dan tidak bisa dinilai nil)
   - int → 0
   - string → ""
   - bool → false

- Reference type (bisa nil)
  - pointer
  - slice
  - map
  - interface
  - function
  - channel

### Conversion VS Parsing
- Conversion = ubah tipe data langsung (tanpa error)
- Parsing = ubah dari string ke tipe lain (bisa error karena perlu “dibaca dulu”)

### Multiple return values
- Fungsi bisa memiliki banyak return value
- Contohnya fungsi dari strings.Atoi()
- Wajib menampung semua return nya dalam variabel
- Sehingga akan menjadi seperti ini misal nya (val, err := Atoi("123"))
- Jika ingin mengabaikan salah satu, gunakan underscore (_) / blank identifier

### Array
- Sudah ditentukan jumlahnya dan tidak bisa ditambah dan tidak bisa di kurang
- Misal panjang array adalah 10, maka tidak bisa di tambah lagi maupun di kurangi
- Kalau mau banyak tanpa mikirin julah nya dari awal, bisa pakai slice [...]

