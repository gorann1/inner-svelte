<script lang="ts">
  import { inertia, Link } from "@inertiajs/svelte";
  let { name }: { name: string } = $props();
</script>

<svelte:head>
  <title>About Page | Under Wraps</title>
</svelte:head>

<div class="inertia_example">
  <h1>Hello {name}!</h1>
  <Link href="/">Home my site</Link>
</div>

<style>
  .inertia_example {
    font-family: Inter, system-ui, Avenir, Helvetica, Arial, sans-serif;
    line-height: 1.5;
    font-weight: 400;
    color: #213547;
    background-color: #ffffff;
    max-width: 1280px;
    margin: 0 auto;
    padding: 2rem;
    text-align: center;
  }
</style>
