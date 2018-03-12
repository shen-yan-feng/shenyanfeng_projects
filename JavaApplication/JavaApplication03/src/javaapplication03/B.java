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
public class B {
<reportpage name=B2017038 caption=01_业品问题件占比及结案率统计报表（分公司层级） alias= id=4BRVIJWS4NTUNYUBNFPOW5XYN1BSQLI9 type=pagetpl>
<option>
bgimg_repeat=no-repeat
bgimg_position=
childindexs=WidgetPageLayout32,PAGEFLOAT
vertalign=relate
top=0px
disabled=false
taskid=BTNPFAM2BU26446TUY8IZLFIKDTL1FK4
height=100%
maxcount=50
maxgridcount=1
grp=EBI$13$BTNPFAM2BU26446TUY8IZLFIKDTL1FK4$/CDM/续期
zindex=0
borderset=none
bgcolor=
left=0px
ismini=false
isextend=false
this-reportid=EBI$12$BTNPFAM2BU26446TUY8IZLFIKDTL1FK4$1$YXMMJ0UIYI49EF9XRO3LKPLKIYXVEWUS.rpttpl
menutemplate=calcdefbutton.txt
width=100%
horzalign=relate
borderradius=5
autosize=none
foldline=true
</option>
<body>
<WidgetPageLayout name=WidgetPageLayout id=WidgetPageLayout32>
<option>
bgimg_repeat=no-repeat
enableSelect=false
bgimg_position=
vertalign=top
zindex=0
borderset=none
top=0
left=0
ismini=false
isextend=false
width=100%
horzalign=left
borderradius=5
disabled=false
height=100%
autosize=none
</option>
<body>
<WidgetArea name=TOPAREA id=toparea>
<option>
bgimg_repeat=no-repeat
Cross_border=10
bgimg_position=
childindexs=WidgetParamDate45,WidgetParamComboBoxTree98,WidgetParamComboBoxTree97,WidgetParamDate19,WidgetParamEdit91
vertalign=top
horzindent=0
borderbottom="cl=#CCCCCC;stl=0;w=1"
zindex=0
borderset=rect
bgcolor=
top=0
left=0
ismini=false
horzgap=10
conditionArr=WidgetParamDate45,WidgetParamDate19,WidgetParamComboBoxTree98,WidgetParamComboBoxTree97,WidgetParamEdit91
isextend=false
width=100%
horzalign=left
borderradius=5
disabled=false
Vertical_border=5
height=100%
autosize=content
</option>
<body>
<WidgetParamDate name=HHH4 id=WidgetParamDate45>
<option>
note=查询月不可为空
bgimg_repeat=no-repeat
datetype=yearmonth
recordvalue=true
paramtype=yearmonth
validator=v && v.length > 0
pid=toparea
bgimg_position=
vertalign=relate
top=5
disabled=false
paramname=@bbq
text=统计起期*
height=22
paramindex=1
textvisible=true
zindex=0
borderset=none
left=0
ismini=false
isextend=false
enabletime=false
width=250
horzalign=relate
borderradius=5
autosize=none
</option>
</WidgetParamDate>
<WidgetParamComboBoxTree name=HHH5 id=WidgetParamComboBoxTree98>
<option>
bgimg_repeat=no-repeat
recordvalue=true
paramtype=dim
pid=toparea
bgimg_position=
vertalign=relate
top=5
autofilter=true
disabled=false
paramname=@fgs
text=分公司
height=22
paramindex=3
textvisible=true
ismult=false
zindex=0
borderset=none
left=470
ismini=false
isextend=false
width=200
horzalign=relate
borderradius=5
autosize=none
</option>
<dim>
itemfilter=if(@managecom='86',(item.id<>'8644'& item.id<>'8655'& item.id<>'8681'& item.id<>'8698'& item.id<>'8699'& item.id<>'X'),item.id=left(@managecom,4))
itemroots=
itemclickfilter=
autoexpand=false
dimname=分公司_CDM
itemsort=
displaystyle=text
includeroot=false
</dim>
</WidgetParamComboBoxTree>
<WidgetParamComboBoxTree name=HHH6 id=WidgetParamComboBoxTree97>
<option>
bgimg_repeat=no-repeat
recordvalue=true
paramtype=dim
pid=toparea
bgimg_position=
vertalign=relate
top=5
autofilter=false
disabled=false
paramname=@qd
text=渠道
height=22
paramindex=4
textvisible=true
ismult=false
zindex=0
borderset=none
left=680
ismini=false
isextend=false
width=200
horzalign=relate
borderradius=5
autosize=none
</option>
<dim>
itemfilter=item.id<>'2'& item.id<>'4' &item.id<>'6' &item.id<>'9' &item.id<>'X'
itemroots=
itemclickfilter=
autoexpand=false
dimname=渠道_CDM
itemsort=
displaystyle=text
includeroot=false
</dim>
</WidgetParamComboBoxTree>
<WidgetParamDate name=HHH41 id=WidgetParamDate19>
<option>
note=查询月不可为空
bgimg_repeat=no-repeat
datetype=yearmonth
recordvalue=true
paramtype=yearmonth
validator=v && v.length > 0
pid=toparea
bgimg_position=
vertalign=relate
top=5
disabled=false
paramname=@p1258
text=统计止期*
height=22
paramindex=2
textvisible=true
zindex=0
borderset=none
left=260
ismini=false
isextend=false
enabletime=false
width=200
horzalign=relate
borderradius=5
autosize=none
</option>
</WidgetParamDate>
<WidgetParamEdit name=HHH36 id=WidgetParamEdit91>
<option>
note=空
bgimg_repeat=no-repeat
recordvalue=true
paramtype=string
scale=2
pid=toparea
bgimg_position=
edittype=string
vertalign=relate
top=32
disabled=false
paramname=@managecom
text=传递参数
events="[{""condition"":"""",""param"":""@fgs"",""property"":""value"",""value"":""""}]"
height=22
visible=false
length=10
paramindex=5
textvisible=true
zindex=0
borderset=none
left=0
ismini=false
isextend=false
width=200
horzalign=relate
borderradius=5
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
childindexs=WidgetText24,WidgetTplGrid14,WidgetText11,WidgetText5
vertalign=top
zindex=0
borderset=rect
bgcolor=
top=0
rptthemecaption=
left=0
ismini=false
isextend=false
width=100%
horzalign=left
borderradius=5
disabled=false
height=100%
autosize=none
</option>
<body>
<WidgetText name=HHH2 id=WidgetText24>
<option>
bgimg_repeat=no-repeat
borderleft="cl=#CCCCCC;stl=5;w=1"
horzrefer=GRID1
valign=top
bgimg_position=
align=center
bordertop="cl=#CCCCCC;stl=5;w=1"
vertalign=relate
borderbottom="cl=#CCCCCC;stl=5;w=1"
zindex=0
borderset=rect
top=17
left=191
ismini=false
isextend=false
width=536
horzalign=center
borderradius=5
borderright="cl=#CCCCCC;stl=5;w=1"
disabled=false
height=38
autosize=content
</option>
<text>
[{"t":"业品问题件占比及结案率统计报表（分公司层级）","stl":{"sz":24,"fn":"微软雅黑"}}]
</text>
</WidgetText>
<WidgetTplGrid name=GRID1 id=WidgetTplGrid14>
<option>
bgimg_repeat=no-repeat
bgimg_position=
vertalign=relate
zindex=0
borderset=none
top=75
left=38
ismini=false
isextend=false
width=918
horzalign=center
borderradius=5
disabled=false
height=127
autosize=none
</option>
<grid rowcount=5 colcount=12>
<style>
fn=微软雅黑;sz=12;cl=#000000;stl=;lo=46;bkcl=transparent
fn=微软雅黑;sz=12;cl=#000000;stl=;lo=47;bkcl=#DDF0FF
fn=微软雅黑;sz=12;cl=#000000;stl=;lo=47;bkcl=transparent
fn=微软雅黑;sz=14;cl=#000000;stl=;lo=47;bkcl=#C0C0C0
fn=微软雅黑;sz=12;cl=#000000;stl=;lo=47;bkcl=#C0C0C0
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
</rows>
<cols>
72
72
72
93
72
98
72
72
72
72
72
visible=0;size=72;exp=
</cols>
<cells>
<cl r=0 c=0 h=3 stl=1 t=N l=50.2>
l=50
indent=2.1.2.1
</cl>
<cl r=0 c=1 w=5 stl=1 t=C l=50>
filter.zz="<#=mkfilter(""BI_V_TROUBLE_CCLOSE_RATE_ORG.CHANNEL=@qd"")#>"
exp=BI_V_TROUBLE_CCLOSE_RATE_ORG.CHANNEL
indent=2.1.2.1
</cl>
<cl r=0 c=6 w=5 stl=1>
indent=2.1.2.1
text=公司整体
</cl>
<cl r=0 c=11 stl=2 t=N l=50.2>
l=50
indent=2.1.2.1
</cl>
<cl r=1 c=1 stl=1>
indent=2.1.2.1
text=新单  
</cl>
<cl r=1 c=2 w=2 stl=1>
indent=2.1.2.1
text=业品问题件占比 
</cl>
<cl r=1 c=4 w=2 stl=1>
indent=2.1.2.1
text=当月受理且结案
</cl>
<cl r=1 c=6 stl=1>
indent=2.1.2.1
text=新单  
</cl>
<cl r=1 c=7 w=2 stl=1>
indent=2.1.2.1
text=业品问题件占比 
</cl>
<cl r=1 c=9 w=2 stl=1>
indent=2.1.2.1
text=当月受理且结案
</cl>
<cl r=1 c=11 stl=2 t=N l=50.2>
l=50
indent=2.1.2.1
</cl>
<cl r=2 c=1 stl=1>
indent=2.1.2.1
text=件数 
</cl>
<cl r=2 c=2 stl=1>
indent=2.1.2.1
text=件数 
</cl>
<cl r=2 c=3 stl=1>
indent=2.1.2.1
text=占比 
</cl>
<cl r=2 c=4 stl=1>
indent=2.1.2.1
text=结案件数
</cl>
<cl r=2 c=5 stl=1>
indent=2.1.2.1
text= 结案率
</cl>
<cl r=2 c=6 stl=1>
indent=2.1.2.1
text=件数 
</cl>
<cl r=2 c=7 stl=1>
indent=2.1.2.1
text=件数 
</cl>
<cl r=2 c=8 stl=1>
indent=2.1.2.1
text=占比 
</cl>
<cl r=2 c=9 stl=1>
indent=2.1.2.1
text=结案件数
</cl>
<cl r=2 c=10 stl=1>
indent=2.1.2.1
text= 结案率
</cl>
<cl r=2 c=11 stl=3>
indent=2.1.2.1
text=顺序
</cl>
<cl r=3 c=0 stl=2 t=C l=0>
filter.zz="<#=mkfilter(""BI_V_TROUBLE_CCLOSE_RATE_ORG.BRANCH=@fgs"")#> and <#=mkfilter(""BI_V_TROUBLE_CCLOSE_RATE_ORG.CHANNEL=@qd"")#> and BI_V_TROUBLE_CCLOSE_RATE_ORG.BRANCH<>'8644' & BI_V_TROUBLE_CCLOSE_RATE_ORG.BRANCH like left(@managecom,4)+'%'"
exp=BI_V_TROUBLE_CCLOSE_RATE_ORG.BRANCH
indent=2.1.2.1
</cl>
<cl r=3 c=1 t=I l=50>
groupnum=true
exp=BI_V_TROUBLE_CCLOSE_RATE_ORG.NEW_CNT
indent=2.1.2.1
nulltozero=false
displayexp=if(self.txt is null ,'-',GRID1.B4)
</cl>
<cl r=3 c=2 t=I l=50>
groupnum=true
exp=BI_V_TROUBLE_CCLOSE_RATE_ORG.POL_CNT
indent=2.1.2.1
nulltozero=false
displayexp=if(self.txt is null ,'-',GRID1.C4)
</cl>
<cl r=3 c=3 t=N l=50.4>
l=50
exp="if(GRID1.B4=0,null,GRID1.C4/GRID1.B4)"
indent=2.1.2.1
displayexp=if(self.txt is null ,'-',FORMAT('%.2f',self.txt*100)^'%')
</cl>
<cl r=3 c=4 t=I l=50>
groupnum=true
exp=BI_V_TROUBLE_CCLOSE_RATE_ORG.CLOSE_CNT
indent=2.1.2.1
nulltozero=false
displayexp=if(self.txt is null ,'-',GRID1.E4)
</cl>
<cl r=3 c=5 t=N l=50.4>
l=50
exp="if(GRID1.C4=0,null,GRID1.E4/GRID1.C4)"
indent=2.1.2.1
displayexp=if(self.txt is null ,'-',FORMAT('%.2f',self.txt*100)^'%')
</cl>
<cl r=3 c=6 t=I l=0>
groupnum=true
exp=BI_V_TROUBLE_CCLOSE_RATE_ORG.NEW_CNT
indent=2.1.2.1
nulltozero=false
displayexp=if(self.txt is null ,'-',GRID1.G4)
</cl>
<cl r=3 c=7 t=I l=0>
groupnum=true
exp=BI_V_TROUBLE_CCLOSE_RATE_ORG.POL_CNT
indent=2.1.2.1
nulltozero=false
displayexp=if(self.txt is null ,'-',GRID1.H4)
</cl>
<cl r=3 c=8 t=N l=50.4>
l=50
exp="if(GRID1.G4=0,null,GRID1.H4/GRID1.G4)"
indent=2.1.2.1
displayexp=if(self.txt is null ,'-',FORMAT('%.2f',self.txt*100)^'%')
</cl>
<cl r=3 c=9 t=I l=0>
groupnum=true
exp=BI_V_TROUBLE_CCLOSE_RATE_ORG.CLOSE_CNT
indent=2.1.2.1
nulltozero=false
displayexp=if(self.txt is null ,'-',GRID1.J4)
</cl>
<cl r=3 c=10 t=N l=50.4>
l=50
exp="if(GRID1.H4=0,null,GRID1.J4/GRID1.H4)"
indent=2.1.2.1
displayexp=if(self.txt is null ,'-',FORMAT('%.2f',self.txt*100)^'%')
</cl>
<cl r=3 c=11 stl=4 t=N l=50.2>
l=50
exp=dim(BI_V_TROUBLE_CCLOSE_RATE_ORG.BRANCH,'BRANCH_SEQ')
indent=2.1.2.1
</cl>
<cl r=4 c=0 stl=2>
text=合计
indent=2.1.2.1
</cl>
<cl r=4 c=1 t=I l=50>
groupnum=true
exp=sum(GRID1.B4$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=4 c=2 t=I l=50>
groupnum=true
exp=sum(GRID1.C4$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=4 c=3 t=N l=50.4>
l=50
exp=GRID1.C5/GRID1.B5
indent=2.1.2.1
displayexp=if(self.txt is null ,'',FORMAT('%.2f',self.txt*100)^'%')
</cl>
<cl r=4 c=4 t=I l=50>
groupnum=true
exp=sum(GRID1.E4$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=4 c=5 t=N l=50.4>
l=50
exp=GRID1.E5/GRID1.C5
indent=2.1.2.1
displayexp=if(self.txt is null ,'',FORMAT('%.2f',self.txt*100)^'%')
</cl>
<cl r=4 c=6 t=I l=50>
groupnum=true
exp=sum(GRID1.G4$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=4 c=7 t=I l=50>
groupnum=true
exp=sum(GRID1.H4$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=4 c=8 t=N l=50.4>
l=50
exp=GRID1.H5/GRID1.G5
indent=2.1.2.1
displayexp=if(self.txt is null ,'',FORMAT('%.2f',self.txt*100)^'%')
</cl>
<cl r=4 c=9 t=I l=50>
groupnum=true
exp=sum(GRID1.J4$)
indent=2.1.2.1
nulltozero=false
</cl>
<cl r=4 c=10 t=N l=50.4>
l=50
exp=GRID1.J5/GRID1.H5
indent=2.1.2.1
displayexp=if(self.txt is null ,'',FORMAT('%.2f',self.txt*100)^'%')
</cl>
<cl r=4 c=11 stl=2 t=N l=50.2>
l=50
indent=2.1.2.1
</cl>
</cells>
</grid>
<floatfxqs>
<floatfxq rect=0.0.12.5>
<floatcell>
<option>
floatrange=0.3.12.4
cell=A4
float=vert
sort=asc
sortexp=L4
splitfloatrect=false
makedimfull=false
filternotindimdata=true
dimfiltername=分公司_CDM
</option>
<customgroup grouptype=0>
</customgroup>
</floatcell>
<floatcell>
<option>
floatrange=1.0.6.5
cell=B1
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
<WidgetText name=HHH15 id=WidgetText11>
<option>
bgimg_repeat=no-repeat
borderleft="cl=#CCCCCC;stl=5;w=1"
horzrefer=GRID1
valign=top
bgimg_position=
align=left
bordertop="cl=#CCCCCC;stl=5;w=1"
vertalign=relate
borderbottom="cl=#CCCCCC;stl=5;w=1"
zindex=0
borderset=rect
top=325
left=38
ismini=false
isextend=false
width=238
horzalign=left
borderradius=5
borderright="cl=#CCCCCC;stl=5;w=1"
disabled=false
height=22
autosize=content
</option>
<text>
[{"t":"<#=datetostr(today(),\"yyyy-mm-dd\")#>","stl":{"sz":12,"fn":"微软雅黑","cl":"#000000"}}]
</text>
</WidgetText>
<WidgetText name=HHH21 id=WidgetText5>
<option>
bgimg_repeat=no-repeat
borderleft="cl=#CCCCCC;stl=5;w=1"
horzrefer=GRID1
valign=top
bgimg_position=
align=left
bordertop="cl=#CCCCCC;stl=5;w=1"
vertalign=relate
borderbottom="cl=#CCCCCC;stl=5;w=1"
zindex=0
borderset=rect
top=215
left=38
ismini=false
isextend=false
width=498
horzalign=left
borderradius=5
borderright="cl=#CCCCCC;stl=5;w=1"
disabled=false
height=101
autosize=content
</option>
<text>
[{"t":"报表说明:","stl":{"sz":12,"fn":"微软雅黑","cl":"#000000"}},{"newline":true},{"t":"1.新单件数，指核心业务系统中在统计区间内新契约承保的保单件数+犹退保单件数。","stl":{"sz":12,"fn":"微软雅黑","cl":"#000000"}},{"newline":true},{"t":"2.业品问题件件数，指通过 1c疑似业品问题件处理池 1d在统计区间内业品受理的问题件件数。","stl":{"sz":12,"fn":"微软雅黑","cl":"#000000"}},{"newline":true},{"t":"3.占比=业品问题件件数/新契约件数*100%","stl":{"sz":12,"fn":"微软雅黑","cl":"#000000"}},{"newline":true},{"t":"4.结案件数，指业品问题件在统计区间内的自然月度受理且结案的件数。","stl":{"sz":12,"fn":"微软雅黑","cl":"#000000"}},{"newline":true},{"t":"5.结案率=结案件数/业品问题件件数*100%","stl":{"sz":12,"fn":"微软雅黑","cl":"#000000"}}]
</text>
</WidgetText>
</body>
</WidgetPageArea>
</body>
<layout>
<rows count=2>
57,752
</rows>
<cols count=1>
994
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
<analyseoption>
bbqoption="exp:bbq()>=@bbq & bbq() <= @p1258"
bbqoption_caption="bbq()>=@bbq & bbq() <= @p1258"
</analyseoption>

</reportpage>
    
}
