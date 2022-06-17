<template>
	<div id='Books'>
		<div class="main-head-books">
			<searchitem></searchitem>
		</div>
		<div class="main-kind-books">
			<template>
			  <el-select
				v-model="kinds.value"
				placeholder="全部类型"
				id="kind"
        @change="turnTo">
			    <el-option
			          v-for="item in kinds"
			          :key="item.value"
			          :label="item.label"
			          :value="item.value">
			        </el-option>
			  </el-select>
			</template>
		</div>
		<div class="main-body-books">
			<bookitem :key="key"
        v-for="(bsi, key) in book_sum_infos"
      :book_sum_info="bsi">
      </bookitem>
		</div>
		<div class="main-page-index-books">
			<el-pagination
			  background
			  layout="prev, pager, next"
			  :total=this.pages
			  style="text-align: center"
        @next-click="pagesDown"
        @prev-click="pagesUp"
        @current-change="changeIndex">
			</el-pagination>
		</div>
	</div>
</template>

<script>
import bookitem from "../components/Book.vue"
import searchitem from "../components/Search.vue"
import axios from 'axios'
axios.defaults.baseURL = 'http://localhost:8080'

export default {
  name: 'Books',
  data() {
	  return {
      isshow_details_list:[],
      count_item_each_page:5,
      count_item: 0,
      index: 1,
      pages: 1,
      all_data:[],
      filesearchtype: '1',
      conditions: [],
      kinds: [
        {value:'1', label:'全部类型'},
        {value:'2', label:'PDF类型'},
        {value:'3', label:'DOC类型'},
        {value:'4', label:'TXT类型'},
        {value:'5', label:'其他类型'}
      ],
      book_sum_infos: [],
      searchMode: ''
	  }
  },
  components: {
    bookitem,
    searchitem
  },
  mounted: function() {
  	this.showAll()
  },
  methods: {
    spysearch() {
      this.fresh()
      this.searchMode=this.$children[0].input
      let mode="^[\\S\\s]*"
      for(var i =0; i <this.searchMode.length; i++) {
        mode+=this.searchMode[i]
        mode+="[\\S\\s]*"
      }
      mode+="$"
      this.searchMode=mode
      for (i = 0; i < this.all_data.length; i++) {
        if(this.all_data[i].bname.match(mode)) {
          this.book_sum_infos.push(this.all_data[i])
        }
      }
      this.count_item=this.book_sum_infos.length
      this.turnPages()
    },
    changeIndex(c) {
      this.index=c
      this.adjustpageshow()
    },
    pagesDown() {
      this.index=this.index+1
      this.adjustpageshow()
    },
    pagesUp() {
      this.index=this.index-1
      this.adjustpageshow()
    },
    adjustpageshow() {
      const c = this.count_item_each_page
      const ind = this.index
      // const m = this.searchMode
      this.fresh()
      for (var i = 0; i < this.all_data.length; i++) {
        if (this.all_data[i].bid >= c*(ind-1)+1 && this.all_data[i].bid < c*ind+1) {
          this.book_sum_infos.push(this.all_data[i])
        }
      }
    },
    turnPages() {
      this.count_item=this.book_sum_infos.length
      this.pages = 10*Math.ceil(this.count_item / this.count_item_each_page)
    },
    turnTo(rows) {
      this.filesearchtype=rows
      switch(rows) {
        case '1':
          this.showAll()
          break
        case '2':
          this.showPdf()
          break
        case '3':
          this.showDoc()
          break
        case '4':
          this.showTxt()
          break
        case '5':
          this.showElse()
          break
        default: console.log("Error! 'rows' is NULL!")
      }
    },
    fresh() {
      while(this.book_sum_infos.length !== 0) {
      	this.book_sum_infos.pop()
      }
      this.count_item=0
    },
	  showAll() {
      this.fresh()
      while(this.all_data.length !== 0) {
      	this.all_data.pop()
      }
		  axios.post('api/user/selectAll').then(res => {
		  	const data = res.data
        for (var i = 0; i < data.length; i++) {
          this.book_sum_infos.push(data[i])
          this.all_data.push(data[i])
        }
        this.count_item= data.length
        this.turnPages()
        this.pagesUp()
        this.pagesDown()
		  }).catch(err => {
		      console.log(err)
		  })
	  },
    showPdf() {
      this.fresh()
      axios.post('api/user/selectPdf').then(res => {
      	const data = res.data
        for (var i = 0; i < data.length; i++) {
          this.book_sum_infos.push(data[i])
        }
        this.count_item=data.length
        this.turnPages()
      }).catch(err => {
          console.log(err)
      })
    },
    showDoc() {
      this.fresh()
      axios.post('api/user/selectDoc').then(res => {
      	const data = res.data
        for (var i = 0; i < data.length; i++) {
          this.book_sum_infos.push(data[i])
        }
        this.count_item=data.length
        this.turnPages()
      }).catch(err => {
          console.log(err)
      })
    },
    showTxt() {
      this.fresh()
      axios.post('api/user/selectTxt').then(res => {
      	const data = res.data
        for (var i = 0; i < data.length; i++) {
          this.book_sum_infos.push(data[i])
        }
        this.count_item=data.length
        this.turnPages()
      }).catch(err => {
          console.log(err)
      })
    },
    showElse() {
      this.fresh()
      axios.post('api/user/selectElse').then(res => {
      	const data = res.data
        for (var i = 0; i < data.length; i++) {
          this.book_sum_infos.push(data[i])
        }
        this.count_item=data.length
        this.turnPages()
      }).catch(err => {
          console.log(err)
      })
    },
  }
}
</script>

<style>
.main-head-books {
	float: left;
	height: 20%;
	width: 40%;
	margin-left: 25%;
	margin-right: 5%;
	padding-bottom: 35px;
}
.main-body-books {
}
.main-page-index-books {
	margin-top: 40px;
	margin-bottom: 100px;
}
::-webkit-scrollbar {
	width:0;
}
#Books {
	margin-top: 5%;
}
#kind {
	border: white;
	width: 110px;
}
</style>
