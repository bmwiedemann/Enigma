-- Copyright (c) 2004 Jacob Scott
-- License: GPL v2.0 or above
-- Enigma Level: Now What?

rooms_wide=1
rooms_high=1

levelw=1+(19*rooms_wide)
levelh=1+(12*rooms_high)

create_world( levelw, levelh)
enigma.ConserveLevel=FALSE

oxyd_default_flavor="a"

fill_floor("fl-bumps", 0,0,levelw,levelh)

function renderLine( line, pattern)
	for i=1, strlen(pattern) do
		local c = strsub( pattern, i, i)
		if c =="#" then
			set_stone( "st-marble", i-1, line)
		elseif c =="." then
			set_stone( "st-fakeoxyda", i-1, line)
			set_item("it-cross",i-1,line)
		elseif c == "o" then
			oxyd( i-1, line)
		elseif c == "*" then
			set_stone( "st-brownie", i-1, line)
                elseif c == "!" then
			abyss(i-1,line)
		elseif c == "~" then
		   set_floor("fl-water",i-1,line)
		elseif c=="z" then
		   set_actor("ac-blackball", i-1,line+.5, {player=0})
		elseif c == "g" then
			draw_stones("st-grate1",{i-1,line}, {1,1}, 1)
		elseif c=="+" then
			set_stone( "st-wood", i-1, line)
		elseif c=="=" then
			set_floor("fl-space",i-1,line)
		     elseif c=="a" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc1"})
		     elseif c=="b" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc2"})
		     elseif c=="c" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc3"})
		     elseif c=="d" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc4"})
		     elseif c=="e" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc5"})
		     elseif c=="j" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc10"})
		     elseif c=="`" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc15"})
		     elseif c=="t" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc20"})
		     elseif c=="y" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc25"})
		     elseif c=="f" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc6"})
		     elseif c=="k" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc11"})
		     elseif c=="p" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc16"})
		     elseif c=="u" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc21"})
		     elseif c=="v" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc22"})
		     elseif c=="w" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc23"})
		     elseif c=="x" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc24"})
		     elseif c=="y" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc25"})
		     elseif c=="m" then
			set_item("it-trigger",i-1,line,{action="callback",target="funcc13"})
		elseif c=="A" then
		   set_stone("st-door_a",i-1,line,{name="s1"})
		elseif c=="B" then
		   set_stone("st-door_a",i-1,line,{name="s2"})
		elseif c=="C" then
		   set_stone("st-door_a",i-1,line,{name="s3"})
		elseif c=="D" then
		   set_stone("st-door_a",i-1,line,{name="s4"})
		elseif c=="E" then
		   set_stone("st-door_a",i-1,line,{name="s5"})
		elseif c=="F" then
		   set_stone("st-door_a",i-1,line,{name="s6"})
		elseif c=="G" then
		   set_stone("st-door_a",i-1,line,{name="s7"})
		elseif c=="H" then
		   set_stone("st-door_a",i-1,line,{name="s8"})
		elseif c=="I" then
		   set_stone("st-door_a",i-1,line,{name="s9"})
		elseif c=="J" then
		   set_stone("st-door_a",i-1,line,{name="s10"})
		elseif c=="K" then
		   set_stone("st-door_a",i-1,line,{name="s11"})
		elseif c=="L" then
		   set_stone("st-door_a",i-1,line,{name="s12"})
		elseif c=="M" then
		   set_stone("st-door_a",i-1,line,{name="s13"})
		elseif c=="N" then
		   set_stone("st-door_a",i-1,line,{name="s14"})
		elseif c=="O" then
		   set_stone("st-door_a",i-1,line,{name="s15"})
		elseif c=="P" then
		   set_stone("st-door_a",i-1,line,{name="s16"})
		elseif c=="Q" then
		   set_stone("st-door_a",i-1,line,{name="s17"})
		elseif c=="R" then
		   set_stone("st-door_a",i-1,line,{name="s18"})
		elseif c=="S" then
		   set_stone("st-door_a",i-1,line,{name="s19"})
		elseif c=="T" then
		   set_stone("st-door_a",i-1,line,{name="s20"})
		elseif c=="U" then
		   set_stone("st-door_a",i-1,line,{name="s21"})
		elseif c=="V" then
		   set_stone("st-door_a",i-1,line,{name="s22"})
		elseif c=="W" then
		   set_stone("st-door_a",i-1,line,{name="s23"})
		elseif c=="X" then
		   set_stone("st-door_a",i-1,line,{name="s24"})
		elseif c=="Y" then
		   set_stone("st-door_a",i-1,line,{name="s25"})
		elseif c=="Z" then
		   set_stone("st-door_a",i-1,line,{name="sb1"})
		elseif c=="1" then
		   set_stone("st-door_a",i-1,line,{name="sc1"})
		elseif c=="2" then
		   set_stone("st-door_a",i-1,line,{name="sc2"})
	     end
	end	
end

renderLine(00,"####################")
renderLine(01,"#    a b c d e   #o#")
renderLine(02,"#   aA B C D Ee  #1#")
renderLine(03,"#                # #")
renderLine(04,"#   fF G H I Jj  # #")
renderLine(05,"#                # #")
renderLine(06,"#m zkK L M N O`  Z .")
renderLine(07,"#                # #")
renderLine(08,"#   pP Q R S Tt  # #")
renderLine(09,"#                # #")
renderLine(10,"#   uU V W X Yy  #2#")
renderLine(11,"#    u v w x y   #o#")
renderLine(12,"####################")

oxyd_shuffle()

a=enigma.GetNamedObject("s1")
b=enigma.GetNamedObject("s2")
c=enigma.GetNamedObject("s3")
d=enigma.GetNamedObject("s4")
e=enigma.GetNamedObject("s5")
f=enigma.GetNamedObject("s6")
g=enigma.GetNamedObject("s7")
h=enigma.GetNamedObject("s8")
i=enigma.GetNamedObject("s9")
j=enigma.GetNamedObject("s10")
k=enigma.GetNamedObject("s11")
l=enigma.GetNamedObject("s12")
m=enigma.GetNamedObject("s13")
n=enigma.GetNamedObject("s14")
o=enigma.GetNamedObject("s15")
p=enigma.GetNamedObject("s16")
q=enigma.GetNamedObject("s17")
r=enigma.GetNamedObject("s18")
s=enigma.GetNamedObject("s19")
t=enigma.GetNamedObject("s20")
u=enigma.GetNamedObject("s21")
v=enigma.GetNamedObject("s22")
w=enigma.GetNamedObject("s23")
x=enigma.GetNamedObject("s24")
y=enigma.GetNamedObject("s25")

sb1=enigma.GetNamedObject("sb1")

sc1=enigma.GetNamedObject("sc1")
sc2=enigma.GetNamedObject("sc2")

--enigma.SendMessage(g,"open",nil)
--enigma.SendMessage(h,"open",nil)
--enigma.SendMessage(n,"open",nil)
--enigma.SendMessage(q,"open",nil)
--enigma.SendMessage(r,"open",nil)

enigma.SendMessage(a,"open",nil)
enigma.SendMessage(b,"open",nil)
enigma.SendMessage(c,"open",nil)
enigma.SendMessage(d,"open",nil)
enigma.SendMessage(e,"open",nil)
enigma.SendMessage(f,"open",nil)
enigma.SendMessage(i,"open",nil)
enigma.SendMessage(j,"open",nil)
enigma.SendMessage(k,"open",nil)
enigma.SendMessage(l,"open",nil)
enigma.SendMessage(m,"open",nil)
enigma.SendMessage(o,"open",nil)
enigma.SendMessage(p,"open",nil)
enigma.SendMessage(s,"open",nil)
enigma.SendMessage(t,"open",nil)
enigma.SendMessage(u,"open",nil)
enigma.SendMessage(v,"open",nil)
enigma.SendMessage(w,"open",nil)
enigma.SendMessage(x,"open",nil)
enigma.SendMessage(y,"open",nil)

-- 1 1 1 1 1
--
-- 1 0 0 1 1
--
-- 1 1 1 0 1
--
-- 1 0 0 1 1
--
-- 1 1 1 1 1

aa=0
bb=0
cc=0
dd=0
ee=0
ff=0
gg=1
hh=1
ii=0
jj=0
kk=0
ll=0
mm=0
nn=1
oo=0
pp=0
qq=1
rr=1
ss=0
tt=0
uu=0
vv=0
ww=0
xx=0
yy=0

-- A B C D E
--
-- F G H I J
--
-- K L M N O
--
-- P Q R S T
--
-- U V W X Y

ff1=0
function funcc1()
if ff1==0 then
   enigma.SendMessage(b,"openclose",nil)
   ccc(2)
   enigma.SendMessage(c,"openclose",nil)
   ccc(3)
--   enigma.SendMessage(d,"openclose",nil)
--   enigma.SendMessage(e,"openclose",nil)
   enigma.SendMessage(f,"openclose",nil)
   ccc(6)
   enigma.SendMessage(k,"openclose",nil)
   ccc(11)
--   enigma.SendMessage(p,"openclose",nil)
--   enigma.SendMessage(u,"openclose",nil)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

function funcc2()
if ff1==0 then
   enigma.SendMessage(a,"openclose",nil)
   enigma.SendMessage(c,"openclose",nil)
   enigma.SendMessage(d,"openclose",nil)
--   enigma.SendMessage(e,"openclose",nil)
   enigma.SendMessage(g,"openclose",nil)
   enigma.SendMessage(l,"openclose",nil)
--   enigma.SendMessage(q,"openclose",nil)
--   enigma.SendMessage(v,"openclose",nil)
   ccc(1)
   ccc(3)
   ccc(4)
   ccc(7)
   ccc(12)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
		   end

function funcc3()
if ff1==0 then
   enigma.SendMessage(a,"openclose",nil)
   enigma.SendMessage(b,"openclose",nil)
   enigma.SendMessage(d,"openclose",nil)
   enigma.SendMessage(e,"openclose",nil)
   enigma.SendMessage(h,"openclose",nil)
   enigma.SendMessage(m,"openclose",nil)
--   enigma.SendMessage(r,"openclose",nil)
--   enigma.SendMessage(w,"openclose",nil)
   ccc(1)
   ccc(2)
   ccc(4)
   ccc(5)
   ccc(8)
   ccc(13)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
		   end

function funcc4()
if ff1==0 then
--   enigma.SendMessage(a,"openclose",nil)
   enigma.SendMessage(b,"openclose",nil)
   enigma.SendMessage(c,"openclose",nil)
   enigma.SendMessage(e,"openclose",nil)
   enigma.SendMessage(i,"openclose",nil)
   enigma.SendMessage(n,"openclose",nil)
   ccc(2)
   ccc(3)
   ccc(5)
   ccc(9)
   ccc(14)
--   enigma.SendMessage(s,"openclose",nil)
--   enigma.SendMessage(x,"openclose",nil)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
		   end

function funcc5()
if ff1==0 then
--   enigma.SendMessage(a,"openclose",nil)
--   enigma.SendMessage(b,"openclose",nil)
   enigma.SendMessage(c,"openclose",nil)
   enigma.SendMessage(d,"openclose",nil)
   enigma.SendMessage(j,"openclose",nil)
   enigma.SendMessage(o,"openclose",nil)
   ccc(3)
   ccc(4)
   ccc(10)
   ccc(15)
--   enigma.SendMessage(t,"openclose",nil)
--   enigma.SendMessage(y,"openclose",nil)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

-- A B C D E
--
-- F G H I J
--
-- K L M N O
--
-- P Q R S T
--
-- U V W X Y

function funcc6()
if ff1==0 then
   enigma.SendMessage(g,"openclose",nil)
   enigma.SendMessage(h,"openclose",nil)
--   enigma.SendMessage(i,"openclose",nil)
--   enigma.SendMessage(j,"openclose",nil)
   enigma.SendMessage(a,"openclose",nil)
   enigma.SendMessage(k,"openclose",nil)
   enigma.SendMessage(p,"openclose",nil)
--   enigma.SendMessage(u,"openclose",nil)
   ccc(7)
   ccc(8)
   ccc(1)
   ccc(11)
   ccc(16)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

function funcc7()
   enigma.SendMessage(f,"openclose",nil)
   enigma.SendMessage(h,"openclose",nil)
   enigma.SendMessage(i,"openclose",nil)
--   enigma.SendMessage(j,"openclose",nil)
   enigma.SendMessage(b,"openclose",nil)
   enigma.SendMessage(l,"openclose",nil)
   enigma.SendMessage(q,"openclose",nil)
--   enigma.SendMessage(v,"openclose",nil)
   ccc(6)
   ccc(8)
   ccc(9)
   ccc(2)
   ccc(12)
   ccc(17)
funccc()
end

function funcc8()
   enigma.SendMessage(f,"openclose",nil)
   enigma.SendMessage(g,"openclose",nil)
   enigma.SendMessage(i,"openclose",nil)
   enigma.SendMessage(j,"openclose",nil)
   enigma.SendMessage(c,"openclose",nil)
   enigma.SendMessage(m,"openclose",nil)
   enigma.SendMessage(r,"openclose",nil)
--   enigma.SendMessage(w,"openclose",nil)
   ccc(6)
   ccc(7)
   ccc(9)
   ccc(10)
   ccc(3)
   ccc(13)
   ccc(18)
funccc()
end

function funcc9()
--   enigma.SendMessage(f,"openclose",nil)
   enigma.SendMessage(g,"openclose",nil)
   enigma.SendMessage(h,"openclose",nil)
   enigma.SendMessage(j,"openclose",nil)
   enigma.SendMessage(d,"openclose",nil)
   enigma.SendMessage(n,"openclose",nil)
   enigma.SendMessage(s,"openclose",nil)
--   enigma.SendMessage(x,"openclose",nil)
   ccc(7)
   ccc(8)
   ccc(10)
   ccc(4)
   ccc(14)
   ccc(19)
funccc()
end

function funcc10()
if ff1==0 then
--   enigma.SendMessage(f,"openclose",nil)
--   enigma.SendMessage(g,"openclose",nil)
   enigma.SendMessage(h,"openclose",nil)
   enigma.SendMessage(i,"openclose",nil)
   enigma.SendMessage(e,"openclose",nil)
   enigma.SendMessage(o,"openclose",nil)
   enigma.SendMessage(t,"openclose",nil)
--   enigma.SendMessage(y,"openclose",nil)
   ccc(8)
   ccc(9)
   ccc(5)
   ccc(15)
   ccc(20)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

-- A B C D E
--
-- F G H I J
--
-- K L M N O
--
-- P Q R S T
--
-- U V W X Y

function funcc11()
if ff1==0 then
   enigma.SendMessage(l,"openclose",nil)
   enigma.SendMessage(m,"openclose",nil)
--   enigma.SendMessage(n,"openclose",nil)
--   enigma.SendMessage(o,"openclose",nil)
   enigma.SendMessage(a,"openclose",nil)
   enigma.SendMessage(f,"openclose",nil)
   enigma.SendMessage(p,"openclose",nil)
   enigma.SendMessage(u,"openclose",nil)
   ccc(12)
   ccc(13)
   ccc(1)
   ccc(6)
   ccc(16)
   ccc(21)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

function funcc12()
   enigma.SendMessage(k,"openclose",nil)
   enigma.SendMessage(m,"openclose",nil)
   enigma.SendMessage(n,"openclose",nil)
--   enigma.SendMessage(o,"openclose",nil)
   enigma.SendMessage(b,"openclose",nil)
   enigma.SendMessage(g,"openclose",nil)
   enigma.SendMessage(q,"openclose",nil)
   enigma.SendMessage(v,"openclose",nil)
   ccc(11)
   ccc(13)
   ccc(14)
   ccc(2)
   ccc(7)
   ccc(17)
   ccc(22)
funccc()
end

function funcc13()
if ff1==0 then
   enigma.SendMessage(k,"openclose",nil)
   enigma.SendMessage(l,"openclose",nil)
   enigma.SendMessage(n,"openclose",nil)
   enigma.SendMessage(o,"openclose",nil)
   enigma.SendMessage(c,"openclose",nil)
   enigma.SendMessage(h,"openclose",nil)
   enigma.SendMessage(r,"openclose",nil)
   enigma.SendMessage(w,"openclose",nil)
   ccc(11)
   ccc(12)
   ccc(14)
   ccc(15)
   ccc(3)
   ccc(8)
   ccc(18)
   ccc(23)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

function funcc14()
--   enigma.SendMessage(k,"openclose",nil)
   enigma.SendMessage(l,"openclose",nil)
   enigma.SendMessage(m,"openclose",nil)
   enigma.SendMessage(o,"openclose",nil)
   enigma.SendMessage(d,"openclose",nil)
   enigma.SendMessage(i,"openclose",nil)
   enigma.SendMessage(s,"openclose",nil)
   enigma.SendMessage(x,"openclose",nil)
   ccc(12)
   ccc(13)
   ccc(15)
   ccc(4)
   ccc(9)
   ccc(19)
   ccc(24)
funccc()
end

function funcc15()
if ff1==0 then
--   enigma.SendMessage(k,"openclose",nil)
--   enigma.SendMessage(l,"openclose",nil)
   enigma.SendMessage(m,"openclose",nil)
   enigma.SendMessage(n,"openclose",nil)
   enigma.SendMessage(e,"openclose",nil)
   enigma.SendMessage(j,"openclose",nil)
   enigma.SendMessage(t,"openclose",nil)
   enigma.SendMessage(y,"openclose",nil)
   ccc(13)
   ccc(14)
   ccc(5)
   ccc(10)
   ccc(20)
   ccc(25)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

-- A B C D E
--
-- F G H I J
--
-- K L M N O
--
-- P Q R S T
--
-- U V W X Y

function funcc16()
if ff1==0 then
   enigma.SendMessage(q,"openclose",nil)
   enigma.SendMessage(r,"openclose",nil)
--   enigma.SendMessage(s,"openclose",nil)
--   enigma.SendMessage(t,"openclose",nil)
--   enigma.SendMessage(a,"openclose",nil)
   enigma.SendMessage(f,"openclose",nil)
   enigma.SendMessage(k,"openclose",nil)
   enigma.SendMessage(u,"openclose",nil)
   ccc(17)
   ccc(18)
   ccc(6)
   ccc(11)
   ccc(21)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

function funcc17()
   enigma.SendMessage(p,"openclose",nil)
   enigma.SendMessage(r,"openclose",nil)
   enigma.SendMessage(s,"openclose",nil)
--   enigma.SendMessage(t,"openclose",nil)
--   enigma.SendMessage(b,"openclose",nil)
   enigma.SendMessage(g,"openclose",nil)
   enigma.SendMessage(l,"openclose",nil)
   enigma.SendMessage(v,"openclose",nil)
   ccc(16)
   ccc(18)
   ccc(19)
   ccc(7)
   ccc(12)
   ccc(22)
funccc()
end

function funcc18()
   enigma.SendMessage(p,"openclose",nil)
   enigma.SendMessage(q,"openclose",nil)
   enigma.SendMessage(s,"openclose",nil)
   enigma.SendMessage(t,"openclose",nil)
--   enigma.SendMessage(c,"openclose",nil)
   enigma.SendMessage(h,"openclose",nil)
   enigma.SendMessage(m,"openclose",nil)
   enigma.SendMessage(w,"openclose",nil)
   ccc(16)
   ccc(17)
   ccc(19)
   ccc(20)
   ccc(8)
   ccc(13)
   ccc(23)
funccc()
end

function funcc19()
--   enigma.SendMessage(p,"openclose",nil)
   enigma.SendMessage(q,"openclose",nil)
   enigma.SendMessage(r,"openclose",nil)
   enigma.SendMessage(t,"openclose",nil)
--   enigma.SendMessage(d,"openclose",nil)
   enigma.SendMessage(i,"openclose",nil)
   enigma.SendMessage(n,"openclose",nil)
   enigma.SendMessage(x,"openclose",nil)
   ccc(17)
   ccc(18)
   ccc(20)
   ccc(9)
   ccc(14)
   ccc(24)
funccc()
end

function funcc20()
if ff1==0 then
--   enigma.SendMessage(p,"openclose",nil)
--   enigma.SendMessage(q,"openclose",nil)
   enigma.SendMessage(r,"openclose",nil)
   enigma.SendMessage(s,"openclose",nil)
--   enigma.SendMessage(e,"openclose",nil)
   enigma.SendMessage(j,"openclose",nil)
   enigma.SendMessage(o,"openclose",nil)
   enigma.SendMessage(y,"openclose",nil)
   ccc(18)
   ccc(19)
   ccc(10)
   ccc(15)
   ccc(25)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

-- A B C D E
--
-- F G H I J
--
-- K L M N O
--
-- P Q R S T
--
-- U V W X Y

function funcc21()
if ff1==0 then
   enigma.SendMessage(v,"openclose",nil)
   enigma.SendMessage(w,"openclose",nil)
--   enigma.SendMessage(x,"openclose",nil)
--   enigma.SendMessage(y,"openclose",nil)
--   enigma.SendMessage(a,"openclose",nil)
--   enigma.SendMessage(f,"openclose",nil)
   enigma.SendMessage(k,"openclose",nil)
   enigma.SendMessage(p,"openclose",nil)
   ccc(22)
   ccc(23)
   ccc(11)
   ccc(16)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

function funcc22()
if ff1==0 then
   enigma.SendMessage(u,"openclose",nil)
   enigma.SendMessage(w,"openclose",nil)
   enigma.SendMessage(x,"openclose",nil)
--   enigma.SendMessage(y,"openclose",nil)
--   enigma.SendMessage(b,"openclose",nil)
--   enigma.SendMessage(g,"openclose",nil)
   enigma.SendMessage(l,"openclose",nil)
   enigma.SendMessage(q,"openclose",nil)
   ccc(21)
   ccc(23)
   ccc(24)
   ccc(12)
   ccc(17)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

function funcc23()
if ff1==0 then
   enigma.SendMessage(u,"openclose",nil)
   enigma.SendMessage(v,"openclose",nil)
   enigma.SendMessage(x,"openclose",nil)
   enigma.SendMessage(y,"openclose",nil)
--   enigma.SendMessage(c,"openclose",nil)
--   enigma.SendMessage(h,"openclose",nil)
   enigma.SendMessage(m,"openclose",nil)
   enigma.SendMessage(r,"openclose",nil)
   ccc(21)
   ccc(22)
   ccc(24)
   ccc(25)
   ccc(13)
   ccc(18)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

function funcc24()
if ff1==0 then
--   enigma.SendMessage(u,"openclose",nil)
   enigma.SendMessage(v,"openclose",nil)
   enigma.SendMessage(w,"openclose",nil)
   enigma.SendMessage(y,"openclose",nil)
--   enigma.SendMessage(d,"openclose",nil)
--   enigma.SendMessage(i,"openclose",nil)
   enigma.SendMessage(n,"openclose",nil)
   enigma.SendMessage(s,"openclose",nil)
   ccc(22)
   ccc(23)
   ccc(25)
   ccc(14)
   ccc(19)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

function funcc25()
if ff1==0 then
--   enigma.SendMessage(u,"openclose",nil)
--   enigma.SendMessage(v,"openclose",nil)
   enigma.SendMessage(w,"openclose",nil)
   enigma.SendMessage(x,"openclose",nil)
--   enigma.SendMessage(e,"openclose",nil)
--   enigma.SendMessage(j,"openclose",nil)
   enigma.SendMessage(o,"openclose",nil)
   enigma.SendMessage(t,"openclose",nil)
   ccc(23)
   ccc(24)
   ccc(15)
   ccc(20)
ff1=1
elseif ff1==1 then
ff1=0
end
funccc()
end

function ccc(lll)
if lll==1 then
if aa==0 then
aa=1
else
aa=0
end

elseif lll==2 then
if bb==0 then
bb=1
else
bb=0
end

elseif lll==3 then
if cc==0 then
cc=1
else
cc=0
end

elseif lll==4 then
if dd==0 then
dd=1
else
dd=0
end

elseif lll==5 then
if ee==0 then
ee=1
else
ee=0
end

elseif lll==6 then
if ff==0 then
ff=1
else
ff=0
end

elseif lll==7 then
if gg==0 then
gg=1
else
gg=0
end

elseif lll==8 then
if hh==0 then
hh=1
else
hh=0
end

elseif lll==9 then
if ii==0 then
ii=1
else
ii=0
end

elseif lll==10 then
if jj==0 then
jj=1
else
jj=0
end

elseif lll==11 then
if kk==0 then
kk=1
else
kk=0
end

elseif lll==12 then
if ll==0 then
ll=1
else
ll=0
end

elseif lll==13 then
if mm==0 then
mm=1
else
mm=0
end

elseif lll==14 then
if nn==0 then
nn=1
else
nn=0
end

elseif lll==15 then
if oo==0 then
oo=1
else
oo=0
end

elseif lll==16 then
if pp==0 then
pp=1
else
pp=0
end

elseif lll==17 then
if qq==0 then
qq=1
else
qq=0
end

elseif lll==18 then
if rr==0 then
rr=1
else
rr=0
end

elseif lll==19 then
if ss==0 then
ss=1
else
ss=0
end

elseif lll==20 then
if tt==0 then
tt=1
else
tt=0
end

elseif lll==21 then
if uu==0 then
uu=1
else
uu=0
end

elseif lll==22 then
if vv==0 then
vv=1
else
vv=0
end

elseif lll==23 then
if ww==0 then
ww=1
else
ww=0
end

elseif lll==24 then
if xx==0 then
xx=1
else
xx=0
end

elseif lll==25 then
if yy==0 then
yy=1
else
yy=0
end

end
end

-- A B C D E
--
-- F G H I J
--
-- K L M N O
--
-- P Q R S T
--
-- U V W X Y

ddd=0

function funccc()
if aa+bb+cc+dd+ee+ff+gg+hh+ii+jj+kk==0 and ll+mm+nn+oo+pp+qq+rr+ss+tt+uu+vv==0 and ww+xx+yy==0 and ddd==0 then
   enigma.SendMessage(sb1,"open",nil)
ddd=1
end

if aa+bb+cc+dd+ee+ff+gg+hh+ii+jj+kk==11 and ll+mm+nn+oo+pp+qq+rr+ss+tt+uu+vv==11 and ww+xx+yy==3 and ddd==0 then
   enigma.SendMessage(sb1,"open",nil)
ddd=1
end

if bb+cc+dd+ff+hh+jj+kk==0 and ll+nn+oo+pp+rr+tt+vv+ww+xx==0 and aa+ee+gg+ii+mm+qq+ss+uu+yy==9 and ddd==1 then
   enigma.SendMessage(sc1,"open",nil)
   enigma.SendMessage(sc2,"open",nil)
ddd=2
end

if bb+cc+dd+ff+hh+jj+kk==7 and ll+nn+oo+pp+rr+tt+vv+ww+xx==9 and aa+ee+gg+ii+mm+qq+ss+uu+yy==0 and ddd==1 then
   enigma.SendMessage(sc1,"open",nil)
   enigma.SendMessage(sc2,"open",nil)
ddd=2
end
end
