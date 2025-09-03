<script lang="ts">
  import { inertia, Link } from "@inertiajs/svelte";
  import Layout from "../Layout.svelte";
  let { name }: { name: string } = $props();
</script>

<svelte:head>
  <title>About Page | Under Wraps</title>
</svelte:head>

<Layout>
  <h1>Hello {name}!</h1>
</Layout>

<style>
</style>
