import { createApp } from "vue";
import "./style.css";
import "./style.scss";
import App from "./App.vue";
import router from "./router";
import "@fortawesome/fontawesome-free/css/all.min.css";

createApp(App).use(router).mount("#app");
