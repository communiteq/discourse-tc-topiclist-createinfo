import { withPluginApi } from "discourse/lib/plugin-api";
import CreateInfo from "../components/create-info";

export default {
  name: "discourse-tc-fingerprint-button",

  initialize() {
    withPluginApi("0.8.13", (api) => {
      api.renderInOutlet("topic-list-topic-cell-link-bottom-line", CreateInfo)
    });
  },
};
