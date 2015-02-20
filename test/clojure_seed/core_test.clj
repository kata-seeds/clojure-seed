(ns clojure-seed.core-test
  (:require [clojure.test :refer :all]
            [clojure-seed.core :refer :all]))

(deftest greeting
  (testing "Can say hello to someone"
    (is (= "Hello, sir" (hello "sir")))))
