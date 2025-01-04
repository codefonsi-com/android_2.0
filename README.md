
removed largescaleapps/my-js-helper from npm online package to offline package for now 

Remember - @largscale/my-js-helpers will be /my-js-helpers everywhere as it will refer to local 


delete all package-lock.json files 

npm cache clean --force

chmod +x ./build.sh

./build.sh




setup tauri https://v1.tauri.app/v1/api/js/app/
npm run tauri dev # from my-svelte-project