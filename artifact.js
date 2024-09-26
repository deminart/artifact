// array-utils.js

// Функция для нахождения среднего значения массива
function average(arr) {
    if (!Array.isArray(arr)) throw new Error("Argument should be an array");
    const sum = arr.reduce((a, b) => a + b, 0);
    return sum / arr.length;
}

// Функция для поиска максимального значения в массиве
function max(arr) {
    if (!Array.isArray(arr)) throw new Error("Argument should be an array");
    return Math.max(...arr);
}

module.exports = { average, max };
