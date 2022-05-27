<script>
export default {
	props: {
		text: String
	}
}
</script>

<style scoped>
.summary-container {
	margin: 10px 20px;
	display: flex;
	flex-direction: column;
}
.summary-title {
	text-transform: uppercase;
	font-weight: bold;
}
.summary-content {
	border: 1px solid black;
	overflow-y: scroll;
	max-height: 50vh;
	min-height: 50vh;
}
.summary-content--paragraph {
	padding: 10px;
}
</style>

<template>
<div class="summary-container">
	<h4 class="summary-title">Summary</h4>
	<div class="summary-content">
		<p class="summary-content--paragraph">
			{{ text }}
		</p>
	</div>
</div>
</template>
