/**
 * Test Case
 * 1. Menjumlahkan angka positif, contoh: 1 + 2 = 3
 * 2. Menjumlahkan angka negatif dengan angka positif, contoh: -1 + 2 = 1
 * 3. Menjumlahkan string dengan number, contoh: "1" + 2 = "12" (string concatenation)
 * 4. Menjumlahkan boolean dengan number, contoh: true + 2 = 3
 */

import { test, expect } from "bun:test";
import { sum } from "./index.js";

test("Should sum two number", () => {
    const a = 1;
    const b = 2;

    const result = sum(a, b);

    expect(result).toBe(3);
});

test("Should sum negative number", () => {
    const a = -1;
    const b = 2;

    const result = sum(a, b);    

    expect(result).toBe(1);
});

test("Should sum string and number", () => {
    const a = "1";
    const b = 2;

    const result = sum(a, b);

    expect(result).toBe("12");
});

test("Should sum boolean and number", () => {
    const a = true;
    const b = 2;

    const result = sum(a, b);

    expect(result).toBe(3);
});

