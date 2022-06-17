<template>
	<div>
		<el-card
			class="book-item-card"
			shadow="always"
      >
    <div class="main-panel" @click="clickshow()">
      <div id="other-infos">
        <div id="like">
          <i class="el-icon-check"></i>
          {{book_sum_info.clike}}
        </div>
        <div id="unlike">
          <i class="el-icon-close"></i>
          {{book_sum_info.cunlike}}
        </div>
        <div id="download">
          <i class="el-icon-download"></i>
          {{book_sum_info.dltimes}}
        </div>
      </div>

      <div class="book-item-infos">
        <div class="upper-block">
          <div id="book-name">
            <i class="el-icon-reading" />
            {{book_sum_info.bname}}
          </div>
          <div id="book-writer">
            <i class="el-icon-user"></i>
            {{show_wname}}
          </div>
        </div>
        <div class="lower-block">
          <div id="book-tags">
            <el-tag size='mini' v-if="this.book_sum_info.attr_edu!==0">教育</el-tag>
            <el-tag size='mini' v-if="this.book_sum_info.attr_amu!==0">娱乐</el-tag>
            <el-tag size='mini' v-if="this.book_sum_info.attr_sci!==0">科普</el-tag>
            <el-tag size='mini' v-if="this.book_sum_info.attr_day!==0">日常</el-tag>
            <el-tag size='mini' v-if="this.book_sum_info.attr_lit!==0">文学</el-tag>
            <el-tag size='mini' v-if="this.book_sum_info.attr_oth!==0">其他</el-tag>
          </div>
        </div>
      </div>
      </div>
		</el-card>
    <div class="all-infos" v-if="ismoduleshow">
      <div class="simple-infos">
        <div id="book-name-info">
          书名：{{book_sum_info.bname}}
        </div>
        <div id="writer-name-info">
          作者：{{book_sum_info.wname}}
        </div>
        <div id="book-date-info">
          收录日期：{{book_sum_info.date}}
        </div>
        <div class="download-hrefs">
          下载链接：
          <el-link type="primary" @click="downloadPDF()">PDF文件</el-link>
          <el-link type="primary" @click="downloadDoc()">DOC文件</el-link>
          <el-link type="primary" @click="downloadTxt()">TXT文件</el-link>
          <el-link type="primary" @click="downloadElse()">其他文件</el-link>
        </div>
      </div>
      <div class="operation-infos">
        <div id="like-choice" @click="choose_like">
          <i class="el-icon-circle-check"></i>这里点个赞！
        </div>
        <div id="hate-choice" @click="choose_hate">
          <i class="el-icon-circle-close"></i>这里按个踩！
        </div>
      </div>
    </div>
	</div>
</template>

<script>
import axios from 'axios'
axios.defaults.baseURL = 'http://localhost:8080'

let app=null
const duration_time=4

export default {
  name: 'bookitem',
  data() {
	  return {
    isliked: false,
    isdated: false,
    ismoduleshow: false,
    pdf_href : '',
    doc_href : '',
    txt_href : '',
    else_href : '',
    clike: 0,
    cunlike: 0,
    dltimes: 0,
		tags:[
			{ key:'1' ,tag:"教育" },
			{ key:'2' ,tag:"文学" },
			{ key:'3' ,tag:"娱乐" },
			{ key:'4' ,tag:"科普" },
			{ key:'5' ,tag:"日常" },
			{ key:'6' ,tag:"其他" }]
	  }
  },
  computed: {
    show_wname() {
      if (this.book_sum_info.wname.length>5) {
        var res = this.book_sum_info.wname.slice(0,5)+"..."
        console.log(res)
        return res
      }
      else {
        return this.book_sum_info.wname
      }
    }
  },
  mounted: function() {
    this.init_isShowList()
    this.init_date()
    this.init_hrefs()
    this.init_count()
  },
  beforeCreate: function() {
    app=this
  },
  methods: {
    increse_dltimes() {
      this.$message({
        duration: duration_time*1000,
        showClose: true,
        message: '提取成功，现在开始下载',
        type: 'success'})
      const bd = this.book_sum_info.bid
      const bn = this.book_sum_info.bname
      axios.post('api/user/clikeddl', { bn, bd }).then(res => {
      	const data = res.data
        app.dltimes=data
      }).catch(err => {
          console.log(err)
      })
    },
    downloadPDF() {
      if (this.book_sum_info.idp===-1) {
        this.$message({
          duration: duration_time*1000,
          showClose: true,
          message: '抱歉，现在暂时没有收录本书的PDF类型文本',
          type: 'warning'})
      } else {
        this.increse_dltimes()
        const bd = this.book_sum_info.bid
        const bn = this.book_sum_info.bname
        axios.post('api/user/getPdfUrl', { bd }).then(res => {
          const data = res.data
          const path = data[0].url + "/"+bn+".pdf"
          console.log(path)
          axios.get('api/user/download', { params: { path } }).then(res => {
            const blob = new Blob([res.data], {})
            const url_1 = window.URL.createObjectURL(blob)
            const ele = document.createElement("a")
            ele.style.display = 'none'
            ele.href = url_1 // 下载文件映射路径
            ele.download = bn+".pdf" // 下载文件名称
            document.querySelectorAll("body")[0].appendChild(ele)
            ele.click()
            ele.remove()
          }).catch(err => {
              console.log(err)
          })
        }).catch(err => {
            console.log(err)
        })
      }
    },
    downloadDoc() {
      if (this.book_sum_info.idd===-1) {
        this.$message({
          duration: duration_time*1000,
          showClose: true,
          message: '抱歉，现在暂时没有收录本书的DOC类型文本',
          type: 'warning'})
      } else {
        this.increse_dltimes()
        const bd = this.book_sum_info.bid
        const bn = this.book_sum_info.bname
        axios.post('api/user/getDocUrl', { bd }).then(res => {
          const data = res.data
          const path = data[0].url + "/"+bn+".doc"
          console.log(path)
          axios.get('api/user/download', { params: { path } }).then(res => {
            const blob = new Blob([res.data], {})
            const url_1 = window.URL.createObjectURL(blob)
            const ele = document.createElement("a")
            ele.style.display = 'none'
            ele.href = url_1 // 下载文件映射路径
            ele.download = bn+".doc" // 下载文件名称
            document.querySelectorAll("body")[0].appendChild(ele)
            ele.click()
            ele.remove()
          }).catch(err => {
              console.log(err)
          })
        }).catch(err => {
            console.log(err)
        })
      }
    },
    downloadTxt() {
      if (this.book_sum_info.idt===-1) {
        this.$message({
          duration: duration_time*1000,
          showClose: true,
          message: '抱歉，现在暂时没有收录本书的TXT类型文本',
          type: 'warning'})
      } else {
        this.increse_dltimes()
        const bd = this.book_sum_info.bid
        const bn = this.book_sum_info.bname
        axios.post('api/user/getTxtUrl', { bd }).then(res => {
          const data = res.data
          const path = data[0].url + "/"+bn+".txt"
          console.log(path)
          axios.get('api/user/download', { params: { path } }).then(res => {
            const blob = new Blob([res.data], {})
            const url_1 = window.URL.createObjectURL(blob)
            const ele = document.createElement("a")
            ele.style.display = 'none'
            ele.href = url_1 // 下载文件映射路径
            ele.download = bn+".txt" // 下载文件名称
            document.querySelectorAll("body")[0].appendChild(ele)
            ele.click()
            ele.remove()
          }).catch(err => {
              console.log(err)
          })
        }).catch(err => {
            console.log(err)
        })
      }
    },
    downloadElse() {
      if (this.book_sum_info.ide===-1) {
        this.$message({
          duration: duration_time*1000,
          showClose: true,
          message: '抱歉，现在暂时没有收录本书的其他类型文本',
          type: 'warning'})
      } else {
        this.increse_dltimes()
        const bd = this.book_sum_info.bid
        const bn = this.book_sum_info.bname
        axios.post('api/user/getElseUrl', { bd }).then(res => {
          const data = res.data
          console.log(res.data)
          const path = data[0].url + "/"+bn

          axios.get('api/user/download', { params: { path } }).then(res => {
            const blob = new Blob([res.data], {})
            const url_1 = window.URL.createObjectURL(blob)
            const ele = document.createElement("a")
            ele.style.display = 'none'
            ele.href = url_1 // 下载文件映射路径
            ele.download = bn // 下载文件名称
            document.querySelectorAll("body")[0].appendChild(ele)
            ele.click()
            ele.remove()
          }).catch(err => {
              console.log(err)
          })
        }).catch(err => {
            console.log(err)
        })
      }
    },
    choose_like() {
      if (this.isliked) {
        this.$message({
          duration: duration_time*1000,
          showClose: true,
          message: '警告，请不要重复点赞',
          type: 'warning'})
      } else {
        this.isliked=true
        this.$message({
          duration: duration_time*1000,
          showClose: true,
          message: '点赞成功，感谢支持',
          type: 'success'})
        const bn = this.book_sum_info.bname
        const bd = this.book_sum_info.bid
        axios.post('api/user/clikedLiked', { bn, bd }).then(res => {
        	const data = res.data
          app.clike=data
        }).catch(err => {
            console.log(err)
        })
      }
    },
    choose_hate() {
      if (this.ishated) {
        this.$message({
          duration: duration_time*1000,
          showClose: true,
          message: '警告，请不要重复点踩',
          type: 'warning'})
      } else {
        this.ishated=true
        this.$message({
          duration: duration_time*1000,
          showClose: true,
          message: '点踩成功，作者会继续改进的',
          type: 'success'})
          const bn = this.book_sum_info.bname
          const bd = this.book_sum_info.bid
          axios.post('api/user/clikedHated', { bn, bd }).then(res => {
          	const data = res.data
            app.cunlike=data
          }).catch(err => {
              console.log(err)
          })
      }
    },
    init_hrefs() {
      this.get_pdf_href()
      this.get_doc_href()
      this.get_txt_href()
      this.get_else_href()
    },
    init_count() {
      this.clike=this.book_sum_info.clike
      this.cunlike=this.book_sum_info.cunlike
      this.dltimes=this.book_sum_info.dltimes
    },
    get_pdf_href() {
      const b = this.book_sum_info.bid+""
      const bn = this.book_sum_info.bname
      axios.post('api/user/getPdfHref', { b }).then(res => {
      	const data = res.data
        if (data.length>0) {
          app.pdf_href=data[0].url+'/'+bn
        } else {
          app.pdf_href="暂无下载链接"
        }
      }).catch(err => {
          console.log(err)
      })
    },
    get_doc_href() {
      const b = this.book_sum_info.bid+""
      const bn = this.book_sum_info.bname
      axios.post('api/user/getDocHref', { b }).then(res => {
      	const data = res.data
        if (data.length>0) {
          app.doc_href=data[0].url+'/'+bn
        } else {
          app.doc_href="暂无下载链接"
        }
      }).catch(err => {
          console.log(err)
      })
    },
    get_txt_href() {
      const b = this.book_sum_info.bid+""
      const bn = this.book_sum_info.bname
      axios.post('api/user/getTxtHref', { b }).then(res => {
      	const data = res.data
        if (data.length>0) {
          app.txt_href=data[0].url+'/'+bn
        } else {
          app.txt_href="暂无下载链接"
        }
      }).catch(err => {
          console.log(err)
      })
    },
    get_else_href() {
      const b = this.book_sum_info.bid+""
      const bn = this.book_sum_info.bname
      axios.post('api/user/getElseHref', { b }).then(res => {
      	const data = res.data
        if (data.length>0) {
          app.else_href=data[0].url+'/'+bn
        } else {
          app.else_href="暂无下载链接"
        }
      }).catch(err => {
          console.log(err)
      })
    },
    clickshow() {
      this.ismoduleshow=!this.ismoduleshow
    },
    init_date() {
      const dates = this.book_sum_info.date.split('-')
      let normalize_date = ''
      normalize_date+=(dates[0]+"年")
      normalize_date+=(dates[1]+"月")
      normalize_date+=(dates[2]+"日")
      this.book_sum_info.date=normalize_date
    },
    init_isShowList() {
      this.isShowList=[
          this.book_sum_info.attr_edu,
          this.book_sum_info.attr_lit,
          this.book_sum_info.attr_amu,
          this.book_sum_info.attr_sci,
          this.book_sum_info.attr_day,
          this.book_sum_info.attr_oth,
        ]
    }
  },
  props: {
    book_sum_info: {
      attr_amu: Number,
      attr_day: Number,
      attr_edu: Number,
      attr_lit: Number,
      attr_oth: Number,
      attr_sci: Number,
      bid: Number,
      bname: String,
      clike: Number,
      cunlike: Number,
      date: String,
      dltimes: Number,
      idd: Number,
      ide: Number,
      idp: Number,
      idt: Number,
      info_record: Number,
      wname: String
    }
  }
}
</script>

<style>
.operation-infos div:hover{
  cursor: pointer;
  color: #409EFF;
}
.operation-infos div:hover i {
  transition: 0.3s;
  margin-right: 4px;
  margin-top: 1px;
  font-size: 22px;
}
.simple-infos div {
  margin:20px;
}
.simple-infos {
  float: left;
  width:70%;
}
.download-hrefs {
  margin-top:40px;
}
.el-link {
  margin-left: 30px;
}
.operation-infos {
  float: right;
  height: 100%;
  width: 30%;
}
.operation-infos div {
  margin-left: 40%;
  margin-top: 30px;
}
.el-icon-circle-check  {
  margin-top: 3px;
  margin-right: 10px;
}
.el-icon-circle-close {
  margin-top: 3px;
  margin-right: 10px;
}
.all-infos {
  margin-top: 15px;
  /* background-color: red; */
  padding-bottom: 100px;
}
.main-panel {
/*  background-color: red; */
  position: relative;
  height: 100%;
  width: 100%;
}
.el-tag {
	margin-right: 12px;
}
.book-item-card {
	transition: 0.3s;
	width: 60%;
	height: 100px;
	margin-top: 20px;
	margin-left: 20%;
	margin-bottom: 10px;
}
.book-item-card:hover {
	width: 64%;
	height: 110px;
	margin-left: 18%;
	cursor: pointer;
	background-color: #E4E7ED;
}
.book-item-card:hover .lower-block {
	transition: 0.15s;
	margin-top: 11px;
}
.book-item-card:hover #book-name {
	transition: 0.15s;
	font-size: 25px;
}
.book-item-card:hover #book-writer {
	transition: 0.15s;
	font-size: 18px;
	padding-top: 13px;
	padding-left: 4px;
}
.book-item-card:hover #other-infos {
	transition: 0.15s;
	font-size: 14px;
}
.upper-block {
	width: 80%;
	margin-bottom: 16px;
}
.all-infos {
  width: 60%;
  height: 100px;
  margin-top: 10px;
  margin-left: 20%;
}
.all-infos-enter-active{
  transition: opacity 1.5s;
}
.all-infos-enter{
   opacity: 0;
}
.all-infos-leave-active{
  transition: opacity .5s;
}
.all-infos-leave-to{
  opacity: 0;
}
#book-name {
	float: left;
	width: 75%;
	font-size: 23px;
}
#book-writer {
	padding-top: 9px;
	font-size: 16px;
}
#book-tags {
	float: left;
	margin-top: 6px;
  width: 70%;
}
#other-infos {
	float: right;
  padding-right: 3%;
  width: 8%;
	font-size: 12px;
	margin-right: 30px;
}
</style>
