<template>
	<div>
    <div class="ruler">排名参照：分数=下载数×5+点赞数×3-点踩数×2</div>
    <div class="main-body-books">
      <div :key="key" v-for="(bsi, key) in ranked_book_info" class="rank-book-part">
        <div class="rank-infos">
          <div id="rank-order">第{{key+1}}名</div>
          <div id="score">得分：{{get_score(key)}}</div>
        </div>
        <bookitem
        :book_sum_info="bsi">
        </bookitem>
      </div>
		</div>
  </div>
</template>

<script>
import bookitem from "../components/Book.vue"
import axios from 'axios'
axios.defaults.baseURL = 'http://localhost:8080'

export default {
  name: 'Rank',
  components: {
    bookitem
  },
  data() {
    return {
      book_all_info: [],
      ranked_book_info: []
    }
  },
  mounted: function() {
    this.init_info_list()
  },
  methods: {
    get_score(k) {
      return this.book_all_info[k].dltimes*5 +
        this.book_all_info[k].clike*3 -
        this.book_all_info[k].cunlike*2
    },
    fresh() {
      while(this.book_all_info.length!==0) {
        this.book_all_info.pop()
      }
      while(this.ranked_book_info.length!==0) {
        this.ranked_book_info.pop()
      }
    },
    init_info_list() {
      let count_ranked=0
      axios.post('api/user/selectAll').then(res => {
      	const data = res.data
        for (var i = 0; i < data.length; i++) {
          this.book_all_info.push(data[i])
        }
        if (this.book_all_info.length>=10) { count_ranked=10 }
        else { count_ranked=this.book_all_info.length }

        var temp = null
        for (i = 0; i < this.book_all_info.length - 1; i++) {
          for (var j = i + 1; j < this.book_all_info.length; j++) {
            if (this.get_score(i) < this.get_score(j)) {
              temp = this.book_all_info[i]
              this.book_all_info[i] = this.book_all_info[j]
              this.book_all_info[j] = temp
            }
          }
        }
        for (i = 0; i < count_ranked; i++) {
          this.ranked_book_info.push(this.book_all_info[i])
        }
        console.log(this.ranked_book_info[0].dltimes)
      }).catch(err => {
          console.log(err)
      })
    }
  }
}
</script>

<style>
::-webkit-scrollbar {
	width:0;
}
.main-body-books {
  margin-top: 3%;
}
.ruler {
  font-size: 13px;
  margin-left: 20%;
  margin-top: 5%;
}
.rank-infos {
  float: left;
  margin-top: 2%;
  margin-left: 7%;
  width: 12%;
}
#rank-order {
  font-size: 23px;
  margin-left: 4%;
  margin-bottom: 10px;
}
</style>
