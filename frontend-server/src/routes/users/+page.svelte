<script>
  import Navigation from '../../components/navigation.svelte';
  import Breadcrumb from '../../components/breadcrumb.svelte';
  import Recipelist from '../../components/recipelist.svelte';
   /** @type {import('./$types').PageData} */
  export let data;
</script>

<h1>We try to load some data from server:</h1>
<ul>
    {#each data.results as r}
        <li>
            [{r.id}]: {r.name}
        </li>
    {/each}
</ul>
<style>

</style>

