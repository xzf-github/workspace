'''
编写程序，实现猜拳游戏，用户输入“剪刀”或“石头”或“布”（可以用数字替代），
电脑随机出“剪刀”或“石头”或“布”，出完后输出谁赢了，三局两胜，最后给出赢家
'''
import random
res=0
ai_win=0
player_win=0
punch=['剪刀','石头','布']
list_ai=[1,2,3]#1为剪刀,2为石头,3为布
rule={1:3,2:1,3:2}
for i in range(1,3+1):
    while True:
        n=input('请出拳(输入1为剪刀,2为石头,3为布):')
        if n.isdigit():
            x=int(n)
            break;

    ai=random.choice(list_ai)
    print('ai出拳为:',punch[ai])
    if rule[ai]==x:
        print('此局ai获胜!')
        ai_win+=1
    elif rule[x]==ai:
        print('此局玩家获胜!')
        player_win+=1
    else:
        print('平局!')

if ai_win>player_win:
    print('ai获胜,ai获胜{0}局,玩家获胜{1}局'.format(ai_win,player_win))
elif ai_win<player_win:
    print('玩家获胜,ai获胜{0}局,玩家获胜{1}局'.format(ai_win,player_win))
else:
    print('双方平局,ai获胜{0}局,玩家获胜{1}局'.format(ai_win,player_win))



