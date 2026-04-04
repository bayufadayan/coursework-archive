# ======================================================
# Catatan Implementasi OOP Python Lengkap
# ======================================================

# 1. Membuat class sederhana
class Mobil:
    # Atribut class (default untuk semua instance)
    warna = "Merah"

# Membuat objek dari class
mobil1 = Mobil()
print("Atribut class:", mobil1.warna)  # Output: Merah


# 2. Atribut class vs atribut instance
class MobilClassInstance:
    # Atribut class
    warna = "Merah"

# Membuat dua objek
m1 = MobilClassInstance()
m2 = MobilClassInstance()

print("Sebelum ubah:", m1.warna, m2.warna)  # Merah Merah

# Ubah atribut class → mempengaruhi semua objek
MobilClassInstance.warna = "Hitam"
print("Sesudah ubah:", m1.warna, m2.warna)  # Hitam Hitam


# 3. Constructor (__init__) dan atribut instance
class MobilInstance:
    def __init__(self, warna, merek, kecepatan):
        self.warna = warna
        self.merek = merek
        self.kecepatan = kecepatan

mobil_a = MobilInstance("Biru", "DicodingCar", 160)
mobil_b = MobilInstance("Hitam", "PythonCar", 120)

print("Mobil A:", mobil_a.warna, mobil_a.merek, mobil_a.kecepatan)
print("Mobil B:", mobil_b.warna, mobil_b.merek, mobil_b.kecepatan)


# 4. Object method (melekat ke objek, pakai self)
class MobilMethod:
    def __init__(self, kecepatan):
        self.kecepatan = kecepatan

    def tambah_kecepatan(self):
        self.kecepatan += 10

mobil_c = MobilMethod(160)
print("\nKecepatan sebelum:", mobil_c.kecepatan)
mobil_c.tambah_kecepatan()
print("Kecepatan sesudah:", mobil_c.kecepatan)


# 5. Static method
class MobilStatic:
    @staticmethod
    def intro_mobil():
        print("Ini adalah metode statis dari kelas Mobil")

# Bisa dipanggil langsung lewat class atau object
MobilStatic.intro_mobil()
mobil_d = MobilStatic()
mobil_d.intro_mobil()


# 6. Class method
class MobilClassMethod:
    def __init__(self, merek):
        self.merek = merek

    @classmethod
    def intro_mobil(cls):
        print("Ini adalah metode dari class Mobil")

# Bisa dipanggil langsung lewat class atau object
MobilClassMethod.intro_mobil()
mobil_e = MobilClassMethod("DicodingCar")
mobil_e.intro_mobil()
