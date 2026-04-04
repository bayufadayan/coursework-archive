# GIT BASIC

```sh
git add {filename}
git add .
```

Memindahkan dari working directory ke staging area

```sh
git commit -m "your message"
```

untuk memindahkan dari staging area ke repository dengan message tertentu

untuk message, ada standar dalam penulisannya. Biasanya menggunakan **Conventinal Commits**.
pemahaman conventional commit dipelajari pada https://andruw.medium.com/berkenalan-dengan-git-conventional-commit-6a4c35354fcb

---
Berikut rangkuman sederhana tentang **Conventional Commit**:  

---

### **Apa Itu Conventional Commit?**  
Conventional Commit adalah **standar penulisan commit message** yang jelas dan terstruktur untuk memudahkan tracking perubahan kode.  

### **Format Penulisan**  
```bash
<type>[optional scope]: <description>
[optional body]
[optional footer(s)]
```
- **Type** → Jenis perubahan (feat, fix, refactor, dll.).  
- **Scope (opsional)** → Bagian kode yang berubah.  
- **Description** → Penjelasan singkat perubahan.  
- **Body (opsional)** → Penjelasan lebih detail.  
- **Footer (opsional)** → Info tambahan (Refs, BREAKING CHANGE, dll.).  

### **Type (Jenis Commit)**  
| Type | Kegunaan |
|------|---------|
| `feat` | Menambahkan fitur baru |
| `fix` | Memperbaiki bug |
| `refactor` | Mengubah kode tanpa mengubah fungsionalitas |
| `chore` | Membersihkan kode tanpa pengaruh ke fungsionalitas |
| `docs` | Memperbarui dokumentasi |
| `build` | Mengubah dependensi atau konfigurasi build |
| `test` | Menambahkan atau mengubah unit test |

### **Contoh Commit Message**  
- **Tanpa scope & body**  
  ```bash
  docs: update response body example for index product API
  ```
- **Dengan scope**  
  ```bash
  feat(homepage): add carousel slider for promoted products
  ```
- **Dengan body & footer**  
  ```bash
  feat(profile page): add change password button to profile page

  add change password button for user on profile page for easier access to user reset password page.

  Refs: #145
  ```
- **Dengan BREAKING CHANGE**  
  ```bash
  chore!: remove reach-firebase-hooks from services

  BREAKING CHANGE: use custom auth services library for auth
  ```

### **Kesimpulan**  
Conventional Commit **memudahkan tracking perubahan kode** dan memperjelas komunikasi antar developer. Meskipun bukan standar baku, format ini sangat membantu dalam pengelolaan proyek.  

🔗 **Referensi**:  
- [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/#summary)  

🚀 **Gunakan format ini supaya commit lebih rapi dan mudah dipahami!**