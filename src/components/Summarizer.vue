<script>
export default {
	props: {
		videoResults: Object,
		text: String
	}
}
</script>

<style scoped>
.summary-container {
	margin: 10px 20px;
	display: flex;
	flex-direction: row;
}
.video-title {
	align-self: center;
}
.video-thumbnail {
	align-self: center;
	min-height: 50vh;
	max-height: 50vh;
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
<h2 v-if="videoResults.videoTitle" class="video-title">{{ videoResults.videoTitle }}</h2>
<div class="summary-container">
	<img v-if="videoResults.videoThumbnail" class="video-thumbnail" :src=videoResults.videoThumbnail />
	<div v-if="text" class="summary-content">
		<h4 class="summary-title">Summary</h4>
		<p class="summary-content--paragraph">
			{{ text }}
		</p>
	</div>
</div>
</template>
