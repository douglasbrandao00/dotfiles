import { $ } from "bun";


const tmuxOutput= await $`echo $TMUX`.quiet().text()
const inTmux = tmuxOutput.replace(/(\r\n|\n|\r)/gm, "").length > 0
const projects = await $`ls ~/www`.quiet().text()
let openProjects 
try {
  openProjects = await $`tmux ls -F '#S'`.quiet().text()
} catch {
  openProjects = ""
}

const parcedOpenProjects = openProjects.split("\n").filter(p => p.length > 0)

const chosenProject = await $`echo "${projects}" | fzf --layout=reverse-list`.text()

const parcedChosenProject = chosenProject.replace(/(\r\n|\n|\r)/gm, "");
const isProjectOpen = parcedOpenProjects.includes(parcedChosenProject)


if(!inTmux && isProjectOpen) {
  await $`tmux attach -t ${parcedChosenProject}`
}
if(!inTmux && !isProjectOpen) {
  await $`tmux new-session -s ${parcedChosenProject} -c "$HOME/www/${parcedChosenProject}"` 
}
if(inTmux && isProjectOpen) {
  await $`tmux switch-client -t ${parcedChosenProject}`
}

if(inTmux && !isProjectOpen) {

  await $`tmux new-session -d -s ${parcedChosenProject} -c "$HOME/www/${parcedChosenProject}"` 
  await $`tmux switch-client -t ${parcedChosenProject}`
}

