export const useRatingStore = async () => {
    let recipeRating = $state(null);
    let userRating = $state(null);

    return {
        get items() {
            return items;
        },
        add: (item) => {
            items = [item, ...items];
        },
    };

};

/*

const useItemStore = () => {
    let items = $state([]);

    return {
        get items() {
            return items;
        },
        add: (item) => {
            items = [item, ...items];
        },
    };
};


let initialCount = 0;

if (
    typeof window !== "undefined" &&
    localStorage.hasOwnProperty("count")
) {
    initialCount = parseInt(localStorage.getItem("count"));
}

let count = $state(initialCount);
const useCountStore = () => {


    return {
        get count() {
            return count;
        },
        increment: () => {
            count++;
            localStorage.setItem("count", count);
        },
    };
};

export { useCountStore };*/
