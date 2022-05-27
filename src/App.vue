<script setup>
import StatusHeader from './components/StatusHeader.vue';
import AudioUploader from './components/AudioUploader.vue';
import Summarizer from './components/Summarizer.vue';
</script>

<script>
export default {
	data() {
		return {
			listening: false,
			summarizing: false,
			finished: false,
			videoResults: {
				videoThumbnail: null,
				videoTitle: null
			},
			summary: ''
		};
	},
	computed: {
		listen() {
			return this.listening;
		},
		summarize() {
			return this.summarizing;
		},
		done() {
			return this.finished;
		},
		getVideoResults() {
			return this.videoResults;
		},
		text() {
			return this.summary;
		}
	},
	methods: {
		handleTranscribe(transcript) {
			console.log(transcript);
		},
		handleListen() {
			this.finished = false;
			this.summarizing = false;
			this.listening = true;
		},
		handleSummarize() {
			this.summarizing = true;
		},
		handleDone(results) {
			this.finished = true;
			this.videoResults = results;
			this.summary = results.summary;
		}
	}
}
</script>

<template>
<div class="app-container">
	<StatusHeader :listen="listen" :summarize="summarize" :done="done" />
	<AudioUploader @transcribe="handleTranscribe" @listen="handleListen" @summarize="handleSummarize" @done="handleDone"/>
	<Summarizer :videoResults="getVideoResults" :text="text"/>
</div>
</template>

<style>
@import './assets/base.css';

.app-container {
	display: flex;
	flex-direction: column;
}
</style>
