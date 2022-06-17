<template>
  <div id="app">
	<div id="head">
		<router-link to="/" class="title" id='first' exact>全书概览</router-link>
		<router-link to="/rank" class="title" exact>书本排行</router-link>
		<router-link to="/sort" class="title" exact>书本分类</router-link>
	</div>
	<div id='main'>
		<transition appear name="slide-right" mode="out-in">
			<router-view />
		</transition>
	</div>
  </div>
</template>

<script>
export default {
  name: 'App',
  components: {
  }
}
</script>

<style>
#first {
	margin-left: 15%;
	padding-left: 1.2%;
	padding-right: 1.2%;
}
#head {
	padding-top: 4%;
	margin-left: 25%;
}
#main {
	margin-top: 2%;
	margin-left: 5%;
	height: 50%;
	width: 90%;
}
body {
	/* background-color: red; */
	width: 95%;
}
.title {
	font-size: 20px;
	margin: 3%;
	text-decoration: none;
	padding-bottom: 1%;
	user-select: none;
}
.router-link-active {
	text-decoration: none;
	border-bottom: #859ddf 2px solid;
	color: #859ddf;
}

.slide-left-enter, .slide-right-leave-to {
  opacity: 0;
  transform: translateX(100%)
}

.slide-left-leave-to, .slide-right-enter {
  opacity: 0;
  transform: translateX(-100%)
}

.slide-left-enter-active, .slide-left-leave-active, .slide-right-enter-active, .slide-right-leave-active {
  transition: 0.5s;
  top:0;
}
</style>
