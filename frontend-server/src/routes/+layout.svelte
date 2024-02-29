<script>
    import { onMount } from 'svelte';
    import '@fortawesome/fontawesome-free/css/all.css';
    import "../styles/global.css";
    import Navigation from '../components/navigation.svelte';
    import { initRecipes } from '../stores/recipeList.svelte.js';


    onMount(() => {
 //       initRecipes();
    });

</script>

<Navigation />

<main>
    <slot />
</main>