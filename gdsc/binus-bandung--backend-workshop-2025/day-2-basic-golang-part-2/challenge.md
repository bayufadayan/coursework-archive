# **Challenge**

Buatlah sebuah function bernama `contains` dalam bahasa Golang dengan spesifikasi berikut:

## **Spesifikasi Function**:
- Function bernama **`contains`**
- Menerima dua parameter:
  1. **words** `[ ]string` → sebuah slice berisi kumpulan string
  2. **target** `string` → sebuah string yang ingin dicari dalam slice
- Mengembalikan nilai bertipe **`bool`**, yaitu:
  - `true` jika **target** ditemukan dalam **words**
  - `false` jika **target** tidak ditemukan

## **Contoh Input dan Output**:

```go
fmt.Println(contains([]string{"apple", "banana", "cherry"}, "banana")) // Output: true
fmt.Println(contains([]string{"apple", "banana", "cherry"}, "grape"))  // Output: false
```

## **Kriteria Penilaian**:
✅ Function berjalan sesuai spesifikasi  
✅ Menggunakan **loop** untuk mencari elemen dalam slice  
✅ Kode rapi dan mudah dibaca  

Silakan tulis kode lengkap beserta contoh penggunannya! 🍃

---

Gaya format ini menggunakan **bold**, *italic*, list bullet, dan kode blok (` ```go `) untuk menampilkan kode dalam format yang lebih jelas.