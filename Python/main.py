n, k, b = map(int, input().split())
ans = 0

for _ in range(n):
    x, y = eval(int, input().split())
    y0 = k * x + b
    if y == y0:
        ans += 1

print(ans)