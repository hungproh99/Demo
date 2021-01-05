async function getImage() {
    const URL = 'api.giphy.com/v1/gifs/random'
    const API_KEY = 'GFrA4PixC69wE9958GuTsIjPnFCGsPDP'
    const FULL_URL = URL + '?api_key=' + API_KEY
    const result = await fetch(FULL_URL).then(response => response.json())
    return result.data.image_url
}
async function run() {
    const image = await getImage()
    const img = document.querySelector("#content")
    img.setAttribute('src', image)
}
run()