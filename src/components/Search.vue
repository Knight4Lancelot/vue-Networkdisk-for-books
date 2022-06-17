<template>
	<div>
    <el-input
			placeholder="请输入内容"
			v-model="input"
			class="searchClass">
			  <el-button
				slot="append"
				icon="el-icon-search"
        @click="getsearchMode"/>
		</el-input>
	</div>
</template>

<script>
export default {
name: 'Search',
	data() {
      return {
        input: ''
      }
    },
	props: {
	},
  methods: {
    getsearchMode() {
      this.$parent.spysearch()
    }
  }
}
</script>

<style>
.searchClass{
  border: 1px solid #c5c5c5;
  border-radius: 20px;
  background: #fff;
}
.searchClass .el-input-group__prepend {
  border: none;
  background-color: transparent;
  padding: 0 10px 0 30px;
}
.searchClass .el-input-group__append {
  border: none;
  background-color: transparent;
}
.searchClass .el-input__inner {
  height: 36px;
  line-height: 36px;
  border: none;
  background-color: transparent;
}
.searchClass .el-icon-search{
  font-size: 16px;
}

.searchClass .line {
  width: 1px;
  height: 26px;
  background-color: #c5c5c5;
  margin-left: 14px;
}
.searchClass:hover{
  border: 1px solid #D5E3E8;
  background: #f4f4f4;
}
.searchClass:hover .line {
  background-color: #D5E3E8;
}
.searchClass:hover .el-icon-search{
  color: #409eff;
  font-size: 16px;
}
</style>
