const sum = require('./sum');

test("add 1 and 2 which equals to 3", () => {
    expect(sum(1, 2)).toBe(3);
});