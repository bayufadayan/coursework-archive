/**
 * TEST CASE
 * 1. Menjumlahkan angka positif, contoh: 1 + 2 = 3
 * 2. Jika ada angka negatif, hasilnya 0
 * 3. Jika salah satu argumen bukan number, hasilnya 0
 */

import { test, expect } from "bun:test";
import sum from "./index.js";

test("Should sum two positive numbers", () => {
    const a = 1;
    const b = 2;

    const result = sum(a, b);

    expect(result).toBe(3);
});

test("Should return 0 if one argument is negative", () => {
    const a = -1;
    const b = 2;

    const result = sum(a, b);

    expect(result).toBe(0);
});

test("Should return 0 if one argument is not number", () => {
    const a = 1;
    const b = "2";
    const c = true;
    const d = null;
    const e = undefined;
    const f = {};
    const g = [];

    const result1 = sum(a, b);
    const result2 = sum(a, c);
    const result3 = sum(a, d);
    const result4 = sum(a, e);
    const result5 = sum(a, f);
    const result6 = sum(a, g);

    expect(result1).toBe(0);
    expect(result2).toBe(0);
    expect(result3).toBe(0);
    expect(result4).toBe(0);
    expect(result5).toBe(0);
    expect(result5).toBe(0);
});