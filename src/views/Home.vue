<template>
  <div id="home" class="container">
      <div class="row task-container">
          <draggable :options="{ group: 'tasks' }" element="ul" v-for="list in tasks" class="col">
              <li v-for="task in list" class="row task">{{ task }}</li>
          </draggable>
      </div>
  </div>
</template>

<script lang="ts">
import draggable from 'vuedraggable';

export default {
    name: 'home',
    components: {
        draggable,
    },
    data() {
        return {
            tasks: [
                ['task1-1', 'task1-2', 'task1-3', 'task1-4'],
                ['task2-1', 'task2-2', 'task2-3', 'task2-4'],
                ['task3-1', 'task3-2', 'task3-3', 'task3-4'],
                ['task4-1', 'task4-2', 'task4-3', 'task4-4'],
                ['task5-1', 'task5-2', 'task5-3', 'task5-4'],
                ['task6-1', 'task6-2', 'task6-3', 'task6-4'],
            ]

        }
    }
}

</script>
<style>
    .task-container {
        overflow-x: auto;
    }
    .col,.row{
        border: 1px solid black;
        margin: 4px;
    }
    .task {
        height: 120px;
        width: 12em;
        padding: 4px;
        padding-top: 2px;
    }
</style>