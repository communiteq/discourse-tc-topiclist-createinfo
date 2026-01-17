import Component from "@glimmer/component";
import formatDate from "discourse/helpers/format-date";

export default class CreateInfo extends Component {
  get showInfo() {
    return true;
  }


  <template>
    {{yield}}
    {{#if this.showInfo}}
      <div>
        <a href={{@topic.creator.path}} data-user-card={{@topic.creator.username}}>
          {{@topic.creator.username}}
        </a>&nbsp;
        {{formatDate @topic.createdAt format="tiny"}}
      </div>
    {{/if}}
  </template>
}

