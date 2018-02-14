/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication03;

/**
 *
 * @author HQST100207
 */
public class C {
<reportpage name=B2017060 caption=继续率_期缴_个险_组_13个月 alias= id=45UVD7WP4NVUNYU56FPOAR73S15S9K7B type=pagetpl>
<option>
bgimg_repeat=no-repeat
bgimg_position=
childindexs=WidgetPageLayout22,PAGEFLOAT
vertalign=relate
top=0px
disabled=false
taskid=BTNPFAM2BU26446TUY8IZLFIKDTL1FK4
height=100%
maxcount=36
grp=EBI$13$BTNPFAM2BU26446TUY8IZLFIKDTL1FK4$/CDM/继续率
maxgridcount=1
borderset=none
zindex=0
bgcolor=
left=0px
ismini=false
this-reportid=EBI$12$BTNPFAM2BU26446TUY8IZLFIKDTL1FK4$1$UUI9LNFEUKKOM3OUYUT4OAMIKPUUPJ08.rpttpl
isextend=false
menutemplate=无导出.txt
width=100%
borderradius=5
horzalign=relate
autosize=none
foldline=true
</option>
<body>
<WidgetPageLayout name=WidgetPageLayout id=WidgetPageLayout22>
<option>
bgimg_repeat=no-repeat
enableSelect=false
bgimg_position=
vertalign=top
borderset=none
zindex=0
top=0
ismini=false
left=0
isextend=false
width=100%
borderradius=5
horzalign=left
disabled=false
autosize=none
height=100%
</option>
<body>
<WidgetArea name=TOPAREA id=toparea>
<option>
bgimg_repeat=no-repeat
Cross_border=10
bgimg_position=
childindexs=WidgetParamDate19,WidgetParamComboBoxTree66,WidgetParamEdit91
vertalign=top
horzindent=0
borderbottom="cl=#CCCCCC;stl=0;w=1"
borderset=rect
zindex=0
bgcolor=
top=0
ismini=false
left=0
horzgap=10
conditionArr=WidgetParamDate19,WidgetParamComboBoxTree66,WidgetParamEdit91
isextend=false
width=100%
borderradius=5
horzalign=left
disabled=false
Vertical_border=5
height=100%
autosize=content
</option>
<body>
<WidgetParamDate name=HHH6 id=WidgetParamDate19>
<option>
note=统计月不能为空
bgimg_repeat=no-repeat
datetype=yearmonth
recordvalue=true
paramtype=yearmonth
validator=v && v.length > 0
pid=toparea
bgimg_position=
vertalign=relate
top=5
paramname=@tjy
disabled=false
text=统计月: *
height=22
paramindex=1
textvisible=true
borderset=none
zindex=0
left=0
ismini=false
enabletime=false
isextend=false
width=200
borderradius=5
horzalign=relate
autosize=none
</option>
</WidgetParamDate>
<WidgetParamComboBoxTree name=HHH16 id=WidgetParamComboBoxTree66>
<option>
note=报表时段不能为空
bgimg_repeat=no-repeat
recordvalue=true
paramtype=dim
validator=v && v.length > 0
pid=toparea
bgimg_position=
vertalign=relate
top=5
autofilter=false
paramname=@bbsd
disabled=false
text=报表时段: *
height=22
paramindex=2
textvisible=true
ismult=false
borderset=none
zindex=0
left=210
ismini=false
isextend=false
width=200
borderradius=5
horzalign=relate
autosize=none
</option>
<dim>
itemfilter=
itemroots=
itemclickfilter=
autoexpand=false
dimname=报表时段_CDM_CP
itemsort=
displaystyle=text
includeroot=false
</dim>
</WidgetParamComboBoxTree>
<WidgetParamEdit name=HHH24 id=WidgetParamEdit91>
<option>
bgimg_repeat=no-repeat
recordvalue=true
paramtype=string
scale=2
pid=toparea
bgimg_position=
edittype=string
vertalign=relate
top=5
paramname=@managecom
disabled=false
text=传入参数
height=22
visible=false
length=10
paramindex=3
textvisible=true
borderset=none
zindex=0
left=420
ismini=false
isextend=false
width=200
borderradius=5
horzalign=relate
autosize=none
</option>
</WidgetParamEdit>
</body>
</WidgetArea>
<WidgetPageArea name=BODYAREA id=bodyarea>
<option>
bgimg_repeat=no-repeat
bgimg_position=
bordertop="cl=#CCCCCC;stl=0;w=1"
childindexs=WidgetLayout82
vertalign=top
borderset=rect
zindex=0
bgcolor=
top=0
rptthemecaption=
ismini=false
left=0
isextend=false
width=100%
borderradius=5
horzalign=left
disabled=false
autosize=none
height=100%
</option>
<body>
<WidgetLayout name=HHH2 id=WidgetLayout82>
<option>
bgimg_repeat=no-repeat
vtype=0
bgimg_position=
layouttype=layout3
vertalign=relate
htype=0
borderset=none
zindex=0
top=0
ismini=false
left=0
isextend=false
width=1185
borderradius=5
horzalign=relate
disabled=false
isStretch=false
height=616
autosize=none
foldline=true
</option>
<body>
<WidgetSheet name=HHH4 id=WidgetSheet56>
<option>
bgimg_repeat=no-repeat
bgimg_position=
defborder="{""color"":""#9d9797"",""width"":1,""style"":""dotted""}"
childindexs=WidgetTplGrid18,WidgetText87,WidgetTplGrid87
vertalign=relate
borderset=rect
zindex=0
cell_padding=2,2,2,2
bgcolor=
top=0
ismini=false
left=0
isextend=false
width=100%
borderradius=5
horzalign=relate
disabled=false
height=100%
autosize=none
foldline=true
</option>
<body>
<WidgetTplGrid name=GRID6 id=WidgetTplGrid18>
<option>
bgimg_repeat=no-repeat
bgimg_position=
vertalign=relate
borderset=none
zindex=0
top=20
ismini=false
left=0
isextend=false
width=343
borderradius=5
horzalign=left
disabled=false
autosize=none
height=31
</option>
<grid rowcount=1 colcount=6>
<style>
fn=微软雅黑;sz=12;cl=#000000;stl=;lo=47;bkcl=transparent
</style>
<border>
cl=#000000;stl=0;w=0
cl=#000000;stl=0;w=1
</border>
<rows>
24
</rows>
<cols>
48
40
80
72
24
72
</cols>
<cells>
<cl r=0 c=0>
indent=2.1.2.1
text=统计月: 
</cl>
<cl r=0 c=1 t=C l=0>
exp=@tjy
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=0 c=2>
indent=2.1.2.1
text=保单生效日：
</cl>
<cl r=0 c=3 t=C l=50>
exp=rs1.sxrq
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=0 c=4>
indent=2.1.2.1
text=至
</cl>
<cl r=0 c=5 t=C l=50>
exp=rs1.sxrz
indent=2.1.2.1
nulltozero=false
</cl>
</cells>
</grid>
<floatfxqs>
<floatfxq rect=0.0.6.1>
</floatfxq>
</floatfxqs>
<defthemeset>
{"defstl":{"dec":2,"indent":"2.1.2.1","sz":12,"fn":"微软雅黑","cl":"#000000","valign":2,"ishorz":true,"type":"N","colspan":1,"rowspan":1,"halign":2,"bkcl":"transparent","wrap":false},"cellborder":{"color":"#CCCCCC","width":1,"style":"solid"},"gridborder":{"color":"#CCCCCC","width":1,"style":"solid"}}
</defthemeset>
</WidgetTplGrid>
<WidgetText name=HHH12 id=WidgetText87>
<option>
bgimg_repeat=no-repeat
borderleft="cl=#CCCCCC;stl=5;w=1"
valign=top
bgimg_position=
horzrefer=GRID1
align=left
bordertop="cl=#CCCCCC;stl=5;w=1"
vertalign=relate
borderbottom="cl=#CCCCCC;stl=5;w=1"
borderset=rect
zindex=0
top=240
ismini=false
left=0
isextend=false
width=843
borderradius=5
horzalign=left
borderright="cl=#CCCCCC;stl=5;w=1"
disabled=false
autosize=content
height=117
</option>
<text>
[{"newline":true},{"t":"报表说明：","stl":{"sz":12,"fn":"微软雅黑","cl":"#000000"}},{"newline":true},{"t":"1.继续率简单描述为，统计时点有效保单的年缴保费(件数)/保单生效时的年缴保费(件数)。拒保、延期、取消、犹退、满期、理赔终止等保单，不在统计范围。","stl":{"sz":12,"fn":"微软雅黑","cl":"#000000"}},{"newline":true},{"t":"2.当前已被裁撤、被合并机构中存在的历史上已离职的业务员名下的退保保单，会影响该机构继续率。","stl":{"sz":12,"fn":"微软雅黑","cl":"#000000"}},{"newline":true},{"t":"3.对于做过保全变更的保单，依据保全对保费的净影响来判断，增加不算减少算。","stl":{"sz":12,"fn":"微软雅黑","cl":"#000000"}},{"newline":true},{"newline":true},{"t":"<#=datetostr(today(),\"yyyy-mm-dd\")#>","stl":{"sz":12,"fn":"微软雅黑","cl":"#000000"}}]
</text>
</WidgetText>
<WidgetTplGrid name=GRID1 id=WidgetTplGrid87>
<option>
bgimg_repeat=no-repeat
bgimg_position=
vertalign=relate
borderset=none
zindex=0
top=55
ismini=false
left=0
isextend=false
pagesize=10000
width=1179
borderradius=5
horzalign=left
disabled=false
autosize=none
height=175
</option>
<grid rowcount=7 colcount=16>
<style>
fn=微软雅黑;sz=12;cl=#000000;stl=;lo=46;bkcl=transparent
fn=微软雅黑;sz=12;cl=#000000;stl=;lo=47;bkcl=#DDF0FF
fn=微软雅黑;sz=12;cl=#000000;stl=;lo=47;bkcl=transparent
</style>
<border>
cl=#CCCCCC;stl=0;w=1
cl=#000000;stl=0;w=1
</border>
<rows>
24
24
24
24
24
24
24
</rows>
<cols>
72
72
72
92
72
72
72
72
72
72
72
72
72
72
72
72
</cols>
<cells>
<cl r=0 c=0 w=4 h=2 stl=1 t=N l=50.2>
l=50
indent=2.1.2.1
</cl>
<cl r=0 c=4 w=6 stl=1 t=C l=0>
exp=rs1.xztysjlx
indent=2.1.2.1
</cl>
<cl r=0 c=10 w=6 stl=1>
iszb=true
text=传统型+非传统型
l=50
indent=2.1.2.1
displayexp="if(self()='Y','传统型+非传统型',true)"
</cl>
<cl r=1 c=4 stl=1>
text=生效保单件数
indent=2.1.2.1
</cl>
<cl r=1 c=5 stl=1>
text=继续保单件数
indent=2.1.2.1
</cl>
<cl r=1 c=6 stl=1>
text=保单件数继续率
indent=2.1.2.1
</cl>
<cl r=1 c=7 stl=1>
text=生效年缴保费
indent=2.1.2.1
</cl>
<cl r=1 c=8 stl=1>
text=继续年缴保费
indent=2.1.2.1
</cl>
<cl r=1 c=9 stl=1>
text=年缴保费继续率
indent=2.1.2.1
</cl>
<cl r=1 c=10 stl=1>
text=生效保单件数
indent=2.1.2.1
</cl>
<cl r=1 c=11 stl=1>
text=继续保单件数
indent=2.1.2.1
</cl>
<cl r=1 c=12 stl=1>
text=保单件数继续率
indent=2.1.2.1
</cl>
<cl r=1 c=13 stl=1>
text=生效年缴保费
indent=2.1.2.1
</cl>
<cl r=1 c=14 stl=1>
text=继续年缴保费
indent=2.1.2.1
</cl>
<cl r=1 c=15 stl=1>
text=年缴保费继续率
indent=2.1.2.1
</cl>
<cl r=2 c=0 h=4 stl=2 t=C l=50>
filter.zz=
exp=rs1.fgs
indent=2.1.2.1
</cl>
<cl r=2 c=1 h=3 stl=2 t=C l=50>
exp=rs1.yxfwbdmc
indent=2.1.2.1
</cl>
<cl r=2 c=2 h=2 stl=2 t=C l=50>
exp=if(rs1.btddqmc is null,' ',rs1.btddqmc)
indent=2.1.2.1
</cl>
<cl r=2 c=3 stl=2 t=C l=50>
exp=rs1.ztddqmc
indent=2.1.2.1
</cl>
<cl r=2 c=4 t=I l=50>
groupnum=true
exp=rs1.bdjsfm
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=2 c=5 t=I l=50>
groupnum=true
exp=rs1.bdjsfz
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=2 c=6 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.F3/GRID1.E3
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=2 c=7 t=N l=50.2>
groupnum=true
l=50
exp=rs1.apfm
indent=2.1.2.1
</cl>
<cl r=2 c=8 t=N l=50.2>
groupnum=true
l=50
exp=rs1.apfz
indent=2.1.2.1
</cl>
<cl r=2 c=9 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.I3/GRID1.H3
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=2 c=10 t=I l=0>
groupnum=true
exp=_S(GRID1.E3$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=2 c=11 t=I l=0>
groupnum=true
exp=_S(GRID1.F3$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=2 c=12 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.L3/GRID1.K3
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=2 c=13 t=N l=50.2>
groupnum=true
l=50
exp=_S(GRID1.H3$)
indent=2.1.2.1
</cl>
<cl r=2 c=14 t=N l=50.2>
groupnum=true
l=50
exp=_S(GRID1.I3$)
indent=2.1.2.1
</cl>
<cl r=2 c=15 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.O3/GRID1.N3
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=3 c=3 stl=2>
text=合计（营业部）
indent=2.1.2.1
</cl>
<cl r=3 c=4 t=I l=50>
groupnum=true
exp=sum(GRID1.E3$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=3 c=5 t=I l=50>
groupnum=true
exp=sum(GRID1.F3$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=3 c=6 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.F4/GRID1.E4
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=3 c=7 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.H3$)
indent=2.1.2.1
</cl>
<cl r=3 c=8 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.I3$)
indent=2.1.2.1
</cl>
<cl r=3 c=9 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.I4/GRID1.H4
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=3 c=10 t=I l=50>
groupnum=true
exp=sum(GRID1.K3$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=3 c=11 t=I l=50>
groupnum=true
exp=sum(GRID1.L3$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=3 c=12 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.L4/GRID1.K4
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=3 c=13 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.N3$)
indent=2.1.2.1
</cl>
<cl r=3 c=14 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.O3$)
indent=2.1.2.1
</cl>
<cl r=3 c=15 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.O4/GRID1.N4
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=4 c=2 w=2 stl=2>
text=合计（营销服务部）
indent=2.1.2.1
</cl>
<cl r=4 c=4 t=I l=0>
groupnum=true
exp=sum(GRID1.E4$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=4 c=5 t=I l=0>
groupnum=true
exp=sum(GRID1.F4$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=4 c=6 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.F5/GRID1.E5
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=4 c=7 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.H4$)
indent=2.1.2.1
</cl>
<cl r=4 c=8 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.I4$)
indent=2.1.2.1
</cl>
<cl r=4 c=9 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.I5/GRID1.H5
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=4 c=10 t=I l=0>
groupnum=true
exp=sum(GRID1.K4$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=4 c=11 t=I l=0>
groupnum=true
exp=sum(GRID1.L4$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=4 c=12 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.L5/GRID1.K5
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=4 c=13 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.N4$)
indent=2.1.2.1
</cl>
<cl r=4 c=14 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.O4$)
indent=2.1.2.1
</cl>
<cl r=4 c=15 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.O5/GRID1.N5
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=5 c=1 w=3 stl=2>
text=合计（分公司）
indent=2.1.2.1
</cl>
<cl r=5 c=4 t=I l=0>
groupnum=true
exp=sum(GRID1.E5$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=5 c=5 t=I l=0>
groupnum=true
exp=sum(GRID1.F5$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=5 c=6 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.F6/GRID1.E6
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=5 c=7 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.H5$)
indent=2.1.2.1
</cl>
<cl r=5 c=8 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.I5$)
indent=2.1.2.1
</cl>
<cl r=5 c=9 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.I6/GRID1.H6
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=5 c=10 t=I l=0>
groupnum=true
exp=sum(GRID1.K5$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=5 c=11 t=I l=0>
groupnum=true
exp=sum(GRID1.L5$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=5 c=12 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.L6/GRID1.K6
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=5 c=13 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.N5$)
indent=2.1.2.1
</cl>
<cl r=5 c=14 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.O5$)
indent=2.1.2.1
</cl>
<cl r=5 c=15 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.O6/GRID1.N6
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=6 c=0 w=4 stl=2>
text=合计（总公司）
indent=2.1.2.1
</cl>
<cl r=6 c=4 t=I l=0>
groupnum=true
exp=sum(GRID1.E6$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=6 c=5 t=I l=0>
groupnum=true
exp=sum(GRID1.F6$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=6 c=6 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.F7/GRID1.E7
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=6 c=7 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.H6$)
indent=2.1.2.1
</cl>
<cl r=6 c=8 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.I6$)
indent=2.1.2.1
</cl>
<cl r=6 c=9 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.I7/GRID1.H7
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=6 c=10 t=I l=0>
groupnum=true
exp=sum(GRID1.K6$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=6 c=11 t=I l=0>
groupnum=true
exp=sum(GRID1.L6$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=6 c=12 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.L7/GRID1.K7
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
<cl r=6 c=13 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.N6$)
indent=2.1.2.1
</cl>
<cl r=6 c=14 t=N l=50.2>
groupnum=true
l=50
exp=sum(GRID1.O6$)
indent=2.1.2.1
</cl>
<cl r=6 c=15 t=N l=50.3>
groupnum=true
l=50
exp=GRID1.O7/GRID1.N7
indent=2.1.2.1
displayexp=self.txt*100+'%'
</cl>
</cells>
</grid>
<floatfxqs>
<floatfxq rect=0.0.16.7>
<floatcell>
<option>
floatrange=0.2.16.6
cell=A3
float=vert
splitfloatrect=false
makedimfull=false
filternotindimdata=false
</option>
<customgroup grouptype=0>
</customgroup>
</floatcell>
<floatcell>
<option>
floatrange=1.2.16.5
cell=B3
float=vert
splitfloatrect=false
makedimfull=false
filternotindimdata=false
</option>
<customgroup grouptype=0>
</customgroup>
</floatcell>
<floatcell>
<option>
floatrange=2.2.16.4
cell=C3
float=vert
splitfloatrect=false
makedimfull=false
filternotindimdata=false
</option>
<customgroup grouptype=0>
</customgroup>
</floatcell>
<floatcell>
<option>
floatrange=3.2.16.3
cell=D3
float=vert
splitfloatrect=false
makedimfull=false
filternotindimdata=false
</option>
<customgroup grouptype=0>
</customgroup>
</floatcell>
<floatcell>
<option>
floatrange=4.0.10.7
cell=E1
float=horz
splitfloatrect=false
makedimfull=false
filternotindimdata=false
</option>
<customgroup grouptype=0>
</customgroup>
</floatcell>
</floatfxq>
</floatfxqs>
<defthemeset>
{"defstl":{"dec":2,"indent":"2.1.2.1","sz":12,"fn":"微软雅黑","cl":"#000000","valign":2,"ishorz":true,"type":"N","colspan":1,"rowspan":1,"halign":2,"bkcl":"transparent","wrap":false},"cellborder":{"color":"#CCCCCC","width":1,"style":"solid"},"gridborder":{"color":"#CCCCCC","width":1,"style":"solid"}}
</defthemeset>
</WidgetTplGrid>
</body>
</WidgetSheet>
<WidgetSheet name=HHH3 id=WidgetSheet68>
<option>
bgimg_repeat=no-repeat
bgimg_position=
defborder="{""color"":""#9d9797"",""width"":1,""style"":""dotted""}"
childindexs=WidgetText30
vertalign=relate
borderset=rect
zindex=0
cell_padding=2,2,2,2
bgcolor=
top=0
ismini=false
left=0
isextend=false
width=100%
borderradius=5
horzalign=relate
disabled=false
height=100%
autosize=none
foldline=true
</option>
<body>
<WidgetText name=HHH5 id=WidgetText30>
<option>
bgimg_repeat=no-repeat
borderleft="cl=#CCCCCC;stl=5;w=1"
valign=top
bgimg_position=
align=center
bordertop="cl=#CCCCCC;stl=5;w=1"
vertalign=relate
borderbottom="cl=#CCCCCC;stl=5;w=1"
borderset=rect
zindex=0
top=15
ismini=false
left=243
isextend=false
width=693
borderradius=5
horzalign=center
borderright="cl=#CCCCCC;stl=5;w=1"
disabled=false
autosize=content
height=43
</option>
<text>
[{"t":"<#=@tjy#>统计月13个月滚动12个月继续率报表-个险","stl":{"sz":28}}]
</text>
</WidgetText>
</body>
</WidgetSheet>
</body>
<layout colStretched=[] vgap=3 hgap=3>
<rows count=2>
-1,-1
</rows>
<cols count=1>
-1
</cols>
<cells>
<cell r=1 c=1 rowspan=1 colspan=1 linkid=WidgetSheet68 />
<cell r=2 c=1 rowspan=1 colspan=1 linkid=WidgetSheet56 />
</cells>
</layout>
</WidgetLayout>
</body>
</WidgetPageArea>
</body>
<layout>
<rows count=2>
30,617
</rows>
<cols count=1>
1185
</cols>
<cells>
<cell r=1 c=1 rowspan=1 colspan=1 linkid=toparea />
<cell r=2 c=1 rowspan=1 colspan=1 linkid=bodyarea />
</cells>
</layout>
</WidgetPageLayout>
</body>
<rptthemename>

</rptthemename>
<print>
zoomHeaderFontSizeByViewRate=0
paginationtype=1
single_planarrowcount=0
alwaysHead=63
pageTail=
zoomCellFontSizeByViewRate=0
margin_top=15
fix_floatrowcount=0
cellFontSizeRate=1.0
subfield_rowwrapdirection=0
align=0
subfield_rowwrapdatacount=0
margin_bottom=15
fix_fixcolcount=0
printZero=0
papertype=A4
planar_paginationtype=1
noPrintRow=
direction=2
layoutAutoSize=0
headerFontSizeRate=1.0
planar_rowcountperpage=0
subfield_rowwrapmaxcolcount=0
subfield_multiColumnDistance=0.0
valign=0
fix_floatcolcount=0
pageHeader=
margin_right=15
margin_left=15
subfield_fixrowcolcount=0
fillrowcol=0
noPrintCol=
printrate=1.0
printmode=1
fix_fixrowcount=0
</print>
<datasource>
<sql name=rs1 dbserver=cdm>
<sqlcontent>
select *
  from (select 机构.分公司 as fgs,
               机构.分公司顺序 as fgssx,
               机构.营销服务部代码 as yxfwbdm,
               代理人历史.部团队编码 as btdbm,
               代理人历史.组团队编码 as ztdbm,
               nvl(机构.营销服务部短名称, 机构.营销服务部) as yxfwbdmc,
               代理人历史.部团队当前名称 as btddqmc,
               代理人历史.组团队当前名称 as ztddqmc,
               险种.险种全选因子 as xzqxyz,
               险种.险种通用设计类型 as xztysjlx,
               sum(C_13个月.保单件数分母_13_R) as bdjsfm,
               sum(C_13个月.保单件数分子_13_R) as bdjsfz,
               sum(C_13个月.AP分母_13_R) as apfm,
               sum(C_13个月.AP分子_13_R) as apfz,
               max(统计区间.START_13_ROLL) sxrq,
               max(统计区间.END_13_ROLL) sxrz
          from DMART.CDM_DIM_CONTINUITY_MANAGECOM 机构,
               DMART.CDM_AGENT_HISTORY 代理人历史,
               (select B.RISKCODE_BK,
                       case
                         when B.ACRISKGENERALDESIGNNAME is null then
                          'X'
                         else
                          B.ACRISKGENERALDESIGNNAME
                       end 险种通用设计类型,
                       'Y' 险种全选因子
                  from DWH.FS_PRODUCT B
                 where B.TYPE_ID = 230) 险种,
               (select A.STARTDATE_ID        STATDATE,
                       A.SALECHNL            CHANNELCODE,
                       A.RISKCODE            RISKCODE,
                       A.PAYINTV             PAYINTV,
                       A.AGENTCODE           AGENTCODE,
                       A.APBELOW_R           AP分母_13_R,
                       A.APUP_R              AP分子_13_R,
                       A.CONTCALCOUNTBELOW_R 保单件数分母_13_R,
                       A.CONTCALCOUNTUP_R    保单件数分子_13_R
                  from DMART.CDM_FACT_RENEW_CONTINUITY_13 A) C_13个月,
               (select A.CHANNELCODE,
                       A.CHANNELCODE 渠道代码,
                       A.CHANNELNAME 渠道名称,
                       A.MAPCHANNELNAME 销售渠道,
                       case A.CHANNELCODE
                         when '1' then
                          '个人营销'
                         when '3' then
                          '银邮代理'
                         when '7' then
                          '经纪代理'
                         else
                          A.MAPCHANNELNAME
                       end 渠道描述,
                       '渠道' 渠道汇总
                  from DMART.CDM_D_MAP_CHANNEL A) 渠道,
               (select A.PAYINTV FREQUENCYCODE,
                       A.PAYINTV 缴费间隔编码,
                       A.PAYINTVNAME 缴费间隔名称,
                       A.YEARTOTAL 年缴费次数,
                       case
                         when A.FREQUENCYCODE in
                              ('F_01', 'F_03', 'F_06', 'F_12') then
                          '期缴'
                         when A.FREQUENCYCODE in ('F_-1', 'F_00') then
                          '趸缴'
                         else
                          '其他'
                       end 缴费分类,
                       case
                         when A.FREQUENCYCODE in
                              ('F_01', 'F_03', 'F_06', 'F_12') then
                          '1'
                         when A.FREQUENCYCODE in ('F_-1', 'F_00') then
                          '2'
                         else
                          '3'
                       end 缴费分类顺序,
                       '期缴+趸缴' 缴费汇总,
                       A.DIMFLAG 缴费类型
                  from DMART.CDM_DIM_FREQUENCY A) 缴费间隔,
               bi_v_dim_stat_span_cdm_cp 统计区间
         where 渠道.渠道代码 = '1'
           and C_13个月.STATDATE =
               to_char(last_day(to_date('<#=@tjy#>' || '01', 'yyyymmdd')),
                       'yyyymmdd')
           and 机构.MANAGECOM like substr('<#=@managecom#>', 1, 4) || '%'
           and 缴费间隔.缴费间隔编码 <> '0'
           and nvl(机构.营销服务部短名称, 机构.营销服务部) <> '虚拟营销服务部'
              
           and 机构.MANAGECOM = 代理人历史.营销服务部代码
           and 代理人历史.AGENTCODE = C_13个月.AGENTCODE
           and 代理人历史.代理人结束日期 >= C_13个月.STATDATE
           and 代理人历史.代理人开始日期 <= C_13个月.STATDATE
              
           and 渠道.CHANNELCODE = C_13个月.CHANNELCODE
           and 缴费间隔.FREQUENCYCODE = C_13个月.PAYINTV
              
           and 险种.RISKCODE_BK = C_13个月.RISKCODE
           and 统计区间.CALENDARID = C_13个月.STATDATE
         group by 机构.分公司,
                  机构.分公司顺序,
                  机构.营销服务部代码,
                  代理人历史.部团队编码,
                  代理人历史.组团队编码,
                  nvl(机构.营销服务部短名称, 机构.营销服务部),
                  代理人历史.部团队当前名称,
                  代理人历史.组团队当前名称,
                  险种.险种全选因子,
                  险种.险种通用设计类型) T0
 order by fgssx    asc nulls last,
          yxfwbdm  asc nulls last,
          btdbm    asc nulls last,
          ztdbm    asc nulls last,
          xzqxyz   asc nulls last,
          xztysjlx asc nulls last

</sqlcontent>
<sqlcolunm>
*
</sqlcolunm>
</sql>
<sql name=totalcount dbserver=cdm>
<sqlcontent>
select count(*)
  from (select 机构.分公司 as fgs,
               机构.分公司顺序 as fgssx,
               机构.营销服务部代码 as yxfwbdm,
               代理人历史.部团队编码 as btdbm,
               代理人历史.组团队编码 as ztdbm,
               nvl(机构.营销服务部短名称, 机构.营销服务部) as yxfwbdmc,
               代理人历史.部团队当前名称 as btddqmc,
               代理人历史.组团队当前名称 as ztddqmc,
               险种.险种全选因子 as xzqxyz,
               险种.险种通用设计类型 as xztysjlx,
               sum(C_13个月.保单件数分母_13_R) as bdjsfm,
               sum(C_13个月.保单件数分子_13_R) as bdjsfz,
               sum(C_13个月.AP分母_13_R) as apfm,
               sum(C_13个月.AP分子_13_R) as apfz,
               max(统计区间.START_13_ROLL) sxrq,
               max(统计区间.END_13_ROLL) sxrz
          from DMART.CDM_DIM_CONTINUITY_MANAGECOM 机构,
               DMART.CDM_AGENT_HISTORY 代理人历史,
               (select B.RISKCODE_BK,
                       case
                         when B.ACRISKGENERALDESIGNNAME is null then
                          'X'
                         else
                          B.ACRISKGENERALDESIGNNAME
                       end 险种通用设计类型,
                       'Y' 险种全选因子
                  from DWH.FS_PRODUCT B
                 where B.TYPE_ID = 230) 险种,
               (select A.STARTDATE_ID        STATDATE,
                       A.SALECHNL            CHANNELCODE,
                       A.RISKCODE            RISKCODE,
                       A.PAYINTV             PAYINTV,
                       A.AGENTCODE           AGENTCODE,
                       A.APBELOW_R           AP分母_13_R,
                       A.APUP_R              AP分子_13_R,
                       A.CONTCALCOUNTBELOW_R 保单件数分母_13_R,
                       A.CONTCALCOUNTUP_R    保单件数分子_13_R
                  from DMART.CDM_FACT_RENEW_CONTINUITY_13 A) C_13个月,
               (select A.CHANNELCODE,
                       A.CHANNELCODE 渠道代码,
                       A.CHANNELNAME 渠道名称,
                       A.MAPCHANNELNAME 销售渠道,
                       case A.CHANNELCODE
                         when '1' then
                          '个人营销'
                         when '3' then
                          '银邮代理'
                         when '7' then
                          '经纪代理'
                         else
                          A.MAPCHANNELNAME
                       end 渠道描述,
                       '渠道' 渠道汇总
                  from DMART.CDM_D_MAP_CHANNEL A) 渠道,
               (select A.PAYINTV FREQUENCYCODE,
                       A.PAYINTV 缴费间隔编码,
                       A.PAYINTVNAME 缴费间隔名称,
                       A.YEARTOTAL 年缴费次数,
                       case
                         when A.FREQUENCYCODE in
                              ('F_01', 'F_03', 'F_06', 'F_12') then
                          '期缴'
                         when A.FREQUENCYCODE in ('F_-1', 'F_00') then
                          '趸缴'
                         else
                          '其他'
                       end 缴费分类,
                       case
                         when A.FREQUENCYCODE in
                              ('F_01', 'F_03', 'F_06', 'F_12') then
                          '1'
                         when A.FREQUENCYCODE in ('F_-1', 'F_00') then
                          '2'
                         else
                          '3'
                       end 缴费分类顺序,
                       '期缴+趸缴' 缴费汇总,
                       A.DIMFLAG 缴费类型
                  from DMART.CDM_DIM_FREQUENCY A) 缴费间隔,
               bi_v_dim_stat_span_cdm_cp 统计区间
         where 渠道.渠道代码 = '1'
           and C_13个月.STATDATE =
               to_char(last_day(to_date('<#=@tjy#>' || '01', 'yyyymmdd')),
                       'yyyymmdd')
           and 机构.MANAGECOM like substr('<#=@managecom#>', 1, 4) || '%'
           and 缴费间隔.缴费间隔编码 <> '0'
           and nvl(机构.营销服务部短名称, 机构.营销服务部) <> '虚拟营销服务部'
              
           and 机构.MANAGECOM = 代理人历史.营销服务部代码
           and 代理人历史.AGENTCODE = C_13个月.AGENTCODE
           and 代理人历史.代理人结束日期 >= C_13个月.STATDATE
           and 代理人历史.代理人开始日期 <= C_13个月.STATDATE
              
           and 渠道.CHANNELCODE = C_13个月.CHANNELCODE
           and 缴费间隔.FREQUENCYCODE = C_13个月.PAYINTV
              
           and 险种.RISKCODE_BK = C_13个月.RISKCODE
           and 统计区间.CALENDARID = C_13个月.STATDATE
         group by 机构.分公司,
                  机构.分公司顺序,
                  机构.营销服务部代码,
                  代理人历史.部团队编码,
                  代理人历史.组团队编码,
                  nvl(机构.营销服务部短名称, 机构.营销服务部),
                  代理人历史.部团队当前名称,
                  代理人历史.组团队当前名称,
                  险种.险种全选因子,
                  险种.险种通用设计类型) T0
 order by fgssx    asc nulls last,
          yxfwbdm  asc nulls last,
          btdbm    asc nulls last,
          ztdbm    asc nulls last,
          xzqxyz   asc nulls last,
          xztysjlx asc nulls last

</sqlcontent>
<sqlcolunm>
count(*)
</sqlcolunm>
</sql>
</datasource>
<analyseoption>
bbqoption_caption=全部数据期
</analyseoption>

</reportpage>

}
