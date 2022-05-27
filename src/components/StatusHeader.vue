<script>
export default {
	props: {
		listen: Boolean,
		summarize: Boolean,
		done: Boolean
	}
}
</script>

<style scoped>
.status-container {
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: space-between;
	width: 100%;
	margin: 20px 0px;
}
.status {
	color: #aab8ce;
	border-bottom: solid #aab8ce 3px;
	padding: 10px 20px;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	transition-duration: 0.5s;
	transition-property: color, border-bottom-color;
}
.status-active {
	color: black;
	border-bottom-color: #e93d45;
}
</style>

<template>
<div class="status-container">
	<div class="status status-listen" :class="{ 'status-active': listen }" >
		<h3>Listening...</h3>
	</div>
	<div class="status status-summarize" :class="{ 'status-active': summarize }">
		<h3>Summarizing...</h3>
	</div>
	<div class="status status-done" :class="{ 'status-active': done }">
		<h3>Complete.</h3>
	</div>
</div>
</template>
