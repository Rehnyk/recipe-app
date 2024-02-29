<script>
    import Recipe from '../../../components/Recipe.svelte';
    import Rating from "../../../components/Ratings.svelte";

</script>


<div class="white-box">
    <Recipe />
    <Rating />
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