<script>

   /** @type {import('./$types').PageData} */
  export let data;
</script>

<div class="white-box">

    <h1>Try to load data from server:</h1>
    <br>
    <ul>
        {#each data.results as r}
            <li>
                [{r.id}]: {r.name}
            </li>
        {/each}
    </ul>

</div>

<style>
    .white-box {
        background-color: rgba(255, 255, 255, 0.8);
        display: flex;
        flex-direction: column;
        margin: 80px auto;
        padding: 70px;
        justify-content: center;
        max-width: 600px;
    }
</style>

