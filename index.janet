(bagatto/set-output-dir! "site")
(bagatto/set-defaults! {:attrs bagatto/parse-mago})

(def static-path-copier (bagatto/path-copier "static"))

(def data {:meta {:src "meta.jdn" :attrs bagatto/parse-jdn}
           :css {:src (bagatto/slurp-* "assets/css/*.css")
                 :attrs bagatto/parse-base}
           :js {:src (bagatto/* "assets/js/main.js")
                :attrs bagatto/parse-base}
           :about {:src "pages/about.md"}})

(def site {:static {:each :css
                    :dest static-path-copier}
           :index {:dest "index.html"
                   :out (bagatto/renderer "/templates/index")}
           :about {:dest "about.html"
                   :out (bagatto/renderer "/templates/about")}
           :blog {:dest "blog.html"
                  :out (bagatto/renderer "/templates/blog")}
           :resume {:dest "resume.html" :out (bagatto/renderer "/templates/resume")}})
