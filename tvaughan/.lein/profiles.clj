{:user {:dependencies [[slamhound "1.5.5" :exclusions [org.clojure/clojure]]]
        :plugins [[lein-ancient "0.6.8" :exclusions [org.clojure/clojure]]
                  [lein-bikeshed "0.3.0" :exclusions [org.clojure/clojure]]
                  [lein-difftest "2.0.0" :exclusions [org.clojure/clojure]]
                  [lein-kibit "0.1.2" :exclusions [org.clojure/clojure]]
                  [lein-pprint "1.1.2" :exclusions [org.clojure/clojure]]
                  [jonase/eastwood "0.2.3" :exclusions [org.clojure/clojure]]]
        :aliases {"slamhound" ["run" "-m" "slam.hound"]}}}
