<template>
	<div id='Books'>
    <div class="tags-area">
      可选标签：
      <el-tag v-for="(t, k) in tags" :key="k" @click="choose(k)">{{t}}</el-tag>
      <div class="has-chosen-tags">
        已选标签：
      <el-tag type="success" v-for="(t, k) in chosen_tags"
      :key="k" closable :disable-transitions="false" @close="closeTag(k)">{{t}}</el-tag>
      </div>
    </div>
		<div class="main-body-books">
			<bookitem :key="key"
        v-for="(bsi, key) in show_book_list"
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
import axios from 'axios'
axios.defaults.baseURL = 'http://localhost:8080'

export default {
  name: 'Sort',
  data() {
	  return {
      show_book_list:[],
      count_item_each_page:5,
      count_item: 0,
      index: 1,
      pages: 1,
      all_data:[],
      filesearchtype: '1',
      conditions: [],
      book_sum_infos: [],
      searchMode: '',
      tags:["文学", "教育", "科普", "娱乐", "日常", "其他"],
      chosen_tags: []
	  }
  },
  components: {
    bookitem
  },
  mounted: function() {
  	this.showAll()
  },
  methods: {
    choose(k) {
      if (this.chosen_tags.indexOf(this.tags[k])===-1) {
        this.chosen_tags.push(this.tags[k])
      }
      this.show_with_choice()
    },
    closeTag(k) {
      this.chosen_tags.splice(k, 1)
      this.show_with_choice()
    },
    show_with_choice() {
      if (this.chosen_tags.length===0) {
        this.fresh_sum()
        for (var i = 0; i < this.all_data.length; i++) {
          this.book_sum_infos.push(this.all_data[i])
        }
        this.count_item= this.all_data.length
        this.turnPages()
        this.adjustpageshow()
      }
      else {
        this.fresh_sum()
        for (i = 0; i < this.all_data.length; i++) {
          if (this.all_data[i].attr_lit===1 && this.chosen_tags.indexOf(this.tags[0])!==-1) {
            this.book_sum_infos.push(this.all_data[i])
            continue
          }
          if (this.all_data[i].attr_edu===1 && this.chosen_tags.indexOf(this.tags[1])!==-1) {
            this.book_sum_infos.push(this.all_data[i])
            continue
          }
          if (this.all_data[i].attr_sci===1 && this.chosen_tags.indexOf(this.tags[2])!==-1) {
            this.book_sum_infos.push(this.all_data[i])
            continue
          }
          if (this.all_data[i].attr_amu===1 && this.chosen_tags.indexOf(this.tags[3])!==-1) {
            this.book_sum_infos.push(this.all_data[i])
            continue
          }
          if (this.all_data[i].attr_day===1 && this.chosen_tags.indexOf(this.tags[4])!==-1) {
            this.book_sum_infos.push(this.all_data[i])
            continue
          }
          if (this.all_data[i].attr_oth===1 && this.chosen_tags.indexOf(this.tags[5])!==-1) {
            this.book_sum_infos.push(this.all_data[i])
            continue
          }
        }
        this.count_item= this.book_sum_infos.length
        this.turnPages()
        this.adjustpageshow()
      }
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
      this.fresh_show()
      for (var i = c*(ind-1); i < c*ind+1 && i < this.book_sum_infos.length; i++) {
        this.show_book_list.push(this.book_sum_infos[i])
      }
    },
    turnPages() {
      this.count_item=this.book_sum_infos.length
      this.pages = 10*Math.ceil(this.count_item / this.count_item_each_page)
    },
    fresh_sum() {
      while(this.book_sum_infos.length !== 0) {
      	this.book_sum_infos.pop()
      }
      this.count_item=0
    },
    fresh_show() {
      while(this.show_book_list.length !== 0) {
      	this.show_book_list.pop()
      }
    },
	  showAll() {
      this.fresh_sum()
      while(this.all_data.length !== 0) {
      	this.all_data.pop()
      }
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
        this.adjustpageshow()
		  }).catch(err => {
		      console.log(err)
		  })
	  }
  }
}
</script>

<style>
.main-page-index-books {
	margin-top: 40px;
	margin-bottom: 100px;
}
::-webkit-scrollbar {
	width:0;
}
.tags-area {
  padding-left: 20%;
}
.tags-area .el-tag {
  margin-left: 1%;
}
.tags-area .el-tag:hover {
  cursor: pointer;
}
.has-chosen-tags {
  margin-top: 3%;
  margin-bottom: 2%;
}
#Books {
	margin-top: 5%;
}
#kind {
	border: white;
	width: 110px;
}
</style>
