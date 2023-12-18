import request from "@/utils/request"
// 渔船民数量
export function getboatmancountalldata(data){

    return request({url:"/boatman/countall",method:"get",data})
}
// 渔船分类数量
export function getvesseltypemapdata(data){

    return request({url:"/vessel/usemap",method:"get",data})
}
// 本地渔船数量
export function getlocalvesselcountlocalvesseldata(data){

    return request({url:"localvessel/countlocalvessel",method:"get",data})
}
// 外地渔船数量
export function getnonlocalvesselcountalldata(data){

    return request({url:"nonlocalvessel/countall",method:"get",data})
}
// 无证渔船数量
export function getnoncertifiedvesselcountalldata(data){

    return request({url:"noncertifiedvessel/countall",method:"get",data})
}
// 入港渔船数量
export function getreportinginfocountinbymonthdata(data){

    return request({url:"reportinginfo/countinbymonth",method:"get",data})
}
// 出港渔船数量
export function getreportinginfocountoutbymonthdata(data){

    return request({url:"reportinginfo/countoutbymonth",method:"get",data})
}
// 出港渔船数量
export function getreportinginfocountyear(data){

    return request({url:"reportinginfo/countyear",method:"get",data})
}

// 出港渔船数量
export function getreportinginfocountday(data){

    return request({url:"reportinginfo/countday",method:"get",data})
}


// 重点数量
export function getboatmancrimemapdata(data){

    return request({url:"/boatman/crimemap",method:"get",data})
}
// 船舶预警数量
export function getvesselwarnmapdata(data){

    return request({url:"/vessel/warnmap",method:"get",data})
}




// 各地渔船出海比例
export function getBldata(data){

    return request({url:"/reportinginfo/reportinglist",method:"get",data})
}

// 渔民年龄分布
export function getboatmanagelistdata(data){

    return request({url:"/boatman/agemap",method:"get",data})
}



// 渔船报备
export function getreportinginforecent12data(data){

    return request({url:"/reportinginfo/recent12",method:"get",data})
}

export function getapprmapdata(data){

    return request({url:"/appr/apprmap",method:"get",data})
}

export function getmapgetmapinfodata(data){

    return request({url:"/map/getmapinfo",method:"get",data})
}

//前十派出所
export function getreportinginfotop10orgdata(data){

    return request({url:"/reportinginfo/top10org",method:"get",data})
}

//吸毒
export function getbootmancountdrugdata(data){

    return request({url:"/boatman/countdrug",method:"get",data})
}
//吸毒
export function getbootmancountcountescapeddata(data){

    return request({url:"/boatman/countescaped",method:"get",data})
}

//吸毒
export function getbootmancountkeydata(data){

    return request({url:"/boatman/countkey",method:"get",data})
}

//远洋
export function getlocalvesselcountoceanvesseldata(data){

    return request({url:"/localvessel/countoceanvessel",method:"get",data})
}







//港口码头
export function getportcountalldata(data){

    return request({url:"/port/countall",method:"get",data})
}

//码头调度
export function getotherdataportdispatchdata(data){

    return request({url:"/otherdata/portdispatch",method:"get",data})
}

//油水补偿
export function getotherdataportsupplydata(data){

    return request({url:"/otherdata/portsupply",method:"get",data})
}

//行业场所
export function getotherdataportstoredata(data){

    return request({url:"/otherdata/portstore",method:"get",data})
}

//船舶代理
export function getotherdatavesselagencydata(data){

    return request({url:"/otherdata/vesselagency",method:"get",data})
}

//涉海中介
export function getotherdatalabouragencydata(data){

    return request({url:"/otherdata/labouragency",method:"get",data})
}

//海上旅游
export function getotherdatafunprojectdata(data){

    return request({url:"/otherdata/funproject",method:"get",data})
}

//修造船企业
export function getotherdatashipindustrydata(data){

    return request({url:"/otherdata/shipindustry",method:"get",data})
}


//渔船马力分类
export function getvesselpowermapdata(data){

    return request({url:"/vessel/powermap",method:"get",data})
}


//外地人经营本地船
export function getlocalvesselownercountbyidcarddata(data){

    return request({url:"/localvesselowner/countbyidcard",method:"get",data})
}


//外地人经营本地船
export function getnonlocalvesselownercountbynonidcarddata(data){

    return request({url:"/nonlocalvesselowner/countbynonidcard",method:"get",data})
}


//外地人经营本地船
export function getvesselnoreport6monthcountdata(data){

    return request({url:"/vessel/noreport6month/count",method:"get",data})
}



//船员职责
export function getbootmandutymapdata(data){

    return request({url:"/boatman/dutymap",method:"get",data})
}



//重点人员表
export function getbootmanfindkeyboatmanmap(data){

    return request({url:"/boatman/findkeyboatmanmap",method:"get",data})
}

//吸毒人员表
export function getbootmanfinddrugboatmanmap(data){

    return request({url:"/boatman/finddrugboatmanmap",method:"get",data})
}

//在逃人员表
export function getbootmanfindescapeboatmanmap(data){

    return request({url:"/boatman/findescapeboatmanmap",method:"get",data})
}
