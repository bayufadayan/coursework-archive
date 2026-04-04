# ======================================================
# Implementasi Inheritance (Pewarisan) di Python
# ======================================================

# 1. Class dasar
class Mobil:
    def __init__(self, warna, merek, kecepatan):
        self.warna = warna
        self.merek = merek
        self.kecepatan = kecepatan

    def tambah_kecepatan(self):
        self.kecepatan += 10


# 2. Subclass sederhana (inheritance)
class MobilSport(Mobil):
    def turbo(self):
        self.kecepatan += 50


# Penggunaan
print("=== Dasar Inheritance ===")
mobil1 = Mobil("Merah", "DicodingCar", 160)
print("Kecepatan mobil1:", mobil1.kecepatan)

mobil_sport1 = MobilSport("Hitam", "DicodingSportCar", 160)
print("Kecepatan mobil_sport1 sebelum turbo:", mobil_sport1.kecepatan)
mobil_sport1.turbo()
print("Kecepatan mobil_sport1 setelah turbo:", mobil_sport1.kecepatan)


# 3. Override method
class MobilSportOverride(Mobil):
    def turbo(self):
        self.kecepatan += 50

    def tambah_kecepatan(self):  # override method
        self.kecepatan += 20


print("\n=== Override ===")
mobil_sport2 = MobilSportOverride("Biru", "OverrideCar", 160)
print("Kecepatan awal:", mobil_sport2.kecepatan)
mobil_sport2.tambah_kecepatan()
print("Kecepatan setelah override tambah_kecepatan():", mobil_sport2.kecepatan)

# Buktikan bahwa class induk tetap pakai logika lama
mobil2 = Mobil("Merah", "DicodingCar", 160)
print("Kecepatan mobil2 (kelas induk):", mobil2.kecepatan)
mobil2.tambah_kecepatan()
print("Setelah tambah_kecepatan():", mobil2.kecepatan)


# 4. super() → memanggil method induk + menambahkan perilaku baru
class MobilSportSuper(Mobil):
    def turbo(self):
        self.kecepatan += 50

    def tambah_kecepatan(self):  # override dengan super()
        super().tambah_kecepatan()  # panggil method induk
        print("Kecepatan Anda meningkat! Hati-Hati!")


print("\n=== super() ===")
mobil_sport3 = MobilSportSuper("Kuning", "SuperCar", 160)
print("Kecepatan awal:", mobil_sport3.kecepatan)
mobil_sport3.tambah_kecepatan()  # panggil override
print("Kecepatan setelah super().tambah_kecepatan():", mobil_sport3.kecepatan)
