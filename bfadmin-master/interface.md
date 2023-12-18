## 后端接口说明文档

### 基础数据板块

```
查找所有渔船民：
/boatman/countall

渔船民列表：
/boatman

本地船舶的数量：
/localvessel/countlocalvessel

本地船舶列表：
/localvessel/findlocalvessel

外地船舶的数量
/nonlocalvessel/countall

外地船舶列表
/nonlocalvessel

未持证船舶的数量
/noncertifiedvessel/countall

未持证船舶列表
/noncertifiedvessel

远洋船舶的数量
/localvessel/countoceanvessel

远洋船舶列表
/localvessel/findoceanvessel
```



### 地图数据板块

```
获取地图数据
/map/getmapinfo
```



### 渔船民分类板块

```
船员职责分类列表
/boatman/dutymap

船员年龄分段列表
/boatman/agemap

minAge-MaxAge 年龄段之间的船员列表
/boatman/ageselect/{minAge}-{maxAge}

船舶马力分段列表
/vessel/powermap

船舶用途分类列表
/vessel/usemap
```



### 船舶出入港报备板块

```
所有报备信息列表
/reportinginfo

12 个月内各个月的入港报备数量
/reportinginfo/countinbymonth

12 个月内各个月的出港报备数量
/reportinginfo/countoutbymonth

一年内出入港报备总数量
/reportinginfo/countyear

一天内出入港报备总数量
/reportinginfo/countday

各个地区报备数量列表
/reportinginfo/reportinglist
```



### 其他数据板块

```
所有港口数量
/port/countall

港口调度数量
/otherdata/portdispatch

海上旅游项目数量
/otherdata/portdispatch

涉海中介数量
/otherdata/labouragency

船舶代理数量
/otherdata/vesselagency

船舶工厂数量
/otherdata/shipindustry

油水补给数量
/otherdata/portsupply

行业场所数量
/otherdata/portstore
```



### 实时报备信息板块

```
实时滚动查询 12 条最新的报备数据
/reportinginfo/recent12
```



### 报备排行板块

```
报备数量前十的派出所
/reportinginfo/top10org
```



### 预警板块

```
所有船舶中六个月没有报备的船舶数量
/vessel/noreportfromall

返回预警人员的信息
Map形式返回
/boatman/crimemap

返回重点预警船员数量
/boatman/countkey

返回涉毒预警船员数量
/boatman/countdrug

返回在逃预警船员数量
/boatman/countescaped

返回预警船舶数量
map形式返回
/vessel/warnmap

返回高风险船舶数量
/vessel/risk/highriskcount

返回中风险船舶数量
/vessel/risk/mediumriskcount

返回被处罚过的渔船数量
/vessel/risk/punishedvessel

返回重点预警船员列表
/boatman/findkey

返回涉毒预警船员列表
/boatman/finddrug

返回在逃预警船员列表
/boatman/findescaped

返回本月重点预警人员细节信息
以map形式返回
身份证号码、姓名、更新时间
/boatman/findkeyboatmanmap

返回本月涉毒预警人员细节信息
以map形式返回
身份证号码、姓名、更新时间
/boatman/finddrugboatmanmap

返回本月在逃预警人员细节信息
以map形式返回
身份证号码、姓名、更新时间
/boatman/findescapeboatmanmap
```



### 待审核板块

```
各地待审核信息数量
/appr/apprmap
```
