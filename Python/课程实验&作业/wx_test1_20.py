# Sn=a1*(1-q^n)/(1-q)
a1=1;q=2;n=64;

Sn=sum([a1*(1-q**i)/(1-q)for i in range(n)])
print(f"需要{Sn}粒米")