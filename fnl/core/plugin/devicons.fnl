(module core.plugin.devicons
  {autoload {devicons nvim-web-devicons}})

(let [fnl {:icon "" :color "#7bc45c" :name "fennel"}]
  (devicons.set_icon {:fnl fnl}))
