// sql语句
var sqlMap = {
    user: {
		selectAll: 'select * from books join writers using(bname,bid,wname) join infos using(wname, info_record) where books.bid=writers.bid and infos.info_record=books.info_record',
    selectPdf: 'select * from books join writers using(bname,bid,wname) join infos using(wname, info_record) where books.bid=writers.bid and infos.info_record=books.info_record and idp<>-1',
    selectDoc: 'select * from books join writers using(bname,bid,wname) join infos using(wname, info_record) where books.bid=writers.bid and infos.info_record=books.info_record and idd<>-1',
    selectTxt: 'select * from books join writers using(bname,bid,wname) join infos using(wname, info_record) where books.bid=writers.bid and infos.info_record=books.info_record and idt<>-1',
    selectElse: 'select * from books join writers using(bname,bid,wname) join infos using(wname, info_record) where books.bid=writers.bid and infos.info_record=books.info_record and ide<>-1',
    getPdfHref: 'select * from pdf_list where bid=',
    getDocHref: 'select * from doc_list where bid=',
    getTxtHref: 'select * from txt_list where bid=',
    getElseHref: 'select * from el_list where bid=',
    }
}

module.exports = sqlMap;
