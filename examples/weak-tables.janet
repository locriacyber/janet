(def weak-k (table/new 10 :k))
(def weak-v (table/new 10 :v))
(def weak-kv (table/new 10 :kv))

(put weak-kv (gensym) 10)
(put weak-kv :hello :world)
(put weak-k :abc123zz77asda :stuff)
(put weak-k true :abc123zz77asda)
(put weak-k :zyzzyz false)
(put weak-v (gensym) 10)
(put weak-v 20 (gensym))
(print "before gc")
(tracev weak-k)
(tracev weak-v)
(tracev weak-kv)
(gccollect)
(print "after gc")
(tracev weak-k)
(tracev weak-v)
(tracev weak-kv)
