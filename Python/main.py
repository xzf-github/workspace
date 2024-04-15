def quick_power_mod(base, exp, mod):
    result = 1
    base %= mod
    while exp > 0:
        # 如果指数为奇数，则累乘当前的底数
        if exp % 2 == 1:
            result = (result * base) % mod
            # 底数平方
        base = (base * base) % mod
        # 指数减半
        exp //= 2
    return result

base = 5
exp = 97
mod = 21

result = quick_power_mod(base, exp, mod)
print(f"{base}^{exp} mod {mod} = {result}")