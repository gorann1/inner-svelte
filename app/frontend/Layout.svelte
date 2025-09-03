<script>
  import { inertia } from "@inertiajs/svelte";
  let { children } = $props();
</script>

<main>
  <header>
    <a use:inertia href="/">Home</a>
    <a use:inertia href="/about">About</a>
    <a use:inertia href="/admin">Dashboard</a>
  </header>
  <article>
    {@render children()}
  </article>
</main>

<style>
  header {
    font-family: Inter, system-ui, Avenir, Helvetica, Arial, sans-serif;
    font-weight: 400;
    max-width: 1280px;
    margin: auto;
    padding: 2rem;
    text-align: center;
  }
</style>
