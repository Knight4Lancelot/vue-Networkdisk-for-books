const express = require('express');
const router = express.Router();

const db = require('../utils/db');
const sql = require('../sqlMap');

router.post('/selectAll', (req, res) => {
    let sqlStr = sql.user.selectAll;
    let params = req.body;
    let conn = new db().getConn();
    conn.query(sqlStr, [], (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/selectPdf', (req, res) => {
    let sqlStr = sql.user.selectPdf;
    let params = req.body;
    let conn = new db().getConn();
    conn.query(sqlStr, [], (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/selectDoc', (req, res) => {
    let sqlStr = sql.user.selectDoc;
    let params = req.body;
    let conn = new db().getConn();
    conn.query(sqlStr, [], (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/selectTxt', (req, res) => {
    let sqlStr = sql.user.selectTxt;
    let params = req.body;
    let conn = new db().getConn();
    conn.query(sqlStr, [], (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/selectElse', (req, res) => {
    let sqlStr = sql.user.selectElse;
    let params = req.body;
    let conn = new db().getConn();
    conn.query(sqlStr, [], (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/getPdfHref', (req, res) => {
    let sqlStr = sql.user.getPdfHref;
    let params = req.body;
    sqlStr+=params.b
    let conn = new db().getConn();
    conn.query(sqlStr, (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/getDocHref', (req, res) => {
    let sqlStr = sql.user.getDocHref;
    let params = req.body;
    sqlStr+=params.b
    let conn = new db().getConn();
    conn.query(sqlStr, (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/getTxtHref', (req, res) => {
    let sqlStr = sql.user.getTxtHref;
    let params = req.body;
    sqlStr+=params.b
    let conn = new db().getConn();
    conn.query(sqlStr, (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/getElseHref', (req, res) => {
    let sqlStr = sql.user.getElseHref;
    let params = req.body;
    sqlStr+=params.b
    let conn = new db().getConn();
    conn.query(sqlStr, (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/clikedLiked', (req, res) => {
    let sqlStr = "UPDATE books SET clike=clike+1 where bname='";
    let params = req.body;
    sqlStr+=(params.bn+"' and bid="+params.bd)
    let conn = new db().getConn();
    conn.query(sqlStr, (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/clikedHated', (req, res) => {
    let sqlStr = "UPDATE books SET cunlike=cunlike+1 where bname='";
    let params = req.body;
    sqlStr+=(params.bn+"' and bid="+params.bd)
    let conn = new db().getConn();
    conn.query(sqlStr, (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/clikeddl', (req, res) => {
    let sqlStr = "UPDATE books SET dltimes=dltimes+1 where bname='";
    let params = req.body;
    sqlStr+=(params.bn+"' and bid="+params.bd)
    let conn = new db().getConn();
    conn.query(sqlStr, (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/getPdfUrl', (req, res) => {
    let sqlStr = "select url from pdf_list where bid=";
    let params = req.body;
    sqlStr+=params.bd
    let conn = new db().getConn();
    conn.query(sqlStr, (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/getDocUrl', (req, res) => {
    let sqlStr = "select url from doc_list where bid=";
    let params = req.body;
    sqlStr+=params.bd
    let conn = new db().getConn();
    conn.query(sqlStr, (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/getTxtUrl', (req, res) => {
    let sqlStr = "select url from txt_list where bid=";
    let params = req.body;
    sqlStr+=params.bd
    let conn = new db().getConn();
    conn.query(sqlStr, (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.post('/getElseUrl', (req, res) => {
    let sqlStr = "select url from el_list where bid=";
    let params = req.body;
    sqlStr+=params.bd
    let conn = new db().getConn();
    conn.query(sqlStr, (err, result) => {
        if (err) { res.json(err); } else { res.json(result) }
    });
    conn.end();
});

router.get('/download', (req, res, next) => {
    try {
      let params = req.body;
      const downloadPath=req.query.path
      res.sendFile(downloadPath)
    } catch (error) {
        return res.status(500).send({
            result: 'error',
            message: `Failed to download file: ${error.message}`
        })
    }
});

module.exports = router;
