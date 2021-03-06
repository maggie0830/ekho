;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                       ;;
;;;                Centre for Speech Technology Research                  ;;
;;;                     University of Edinburgh, UK                       ;;
;;;                         Copyright (c) 1996                            ;;
;;;                        All Rights Reserved.                           ;;
;;;                                                                       ;;
;;;  Permission is hereby granted, free of charge, to use and distribute  ;;
;;;  this software and its documentation without restriction, including   ;;
;;;  without limitation the rights to use, copy, modify, merge, publish,  ;;
;;;  distribute, sublicense, and/or sell copies of this work, and to      ;;
;;;  permit persons to whom this work is furnished to do so, subject to   ;;
;;;  the following conditions:                                            ;;
;;;   1. The code must retain the above copyright notice, this list of    ;;
;;;      conditions and the following disclaimer.                         ;;
;;;   2. Any modifications must be clearly marked as such.                ;;
;;;   3. Original authors' names are not deleted.                         ;;
;;;   4. The authors' names are not used to endorse or promote products   ;;
;;;      derived from this software without specific prior written        ;;
;;;      permission.                                                      ;;
;;;                                                                       ;;
;;;  THE UNIVERSITY OF EDINBURGH AND THE CONTRIBUTORS TO THIS WORK        ;;
;;;  DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING      ;;
;;;  ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT   ;;
;;;  SHALL THE UNIVERSITY OF EDINBURGH NOR THE CONTRIBUTORS BE LIABLE     ;;
;;;  FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    ;;
;;;  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN   ;;
;;;  AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,          ;;
;;;  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF       ;;
;;;  THIS SOFTWARE.                                                       ;;
;;;                                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;   First attempt at a tree to learn durations.  Although
;;;   it was trained from F2B and the radio phone set should
;;;   work for others that are decalred with the same phone
;;;   features
;;;

;; in ancient items (not on independent data)
;; RMSE 0.821086 Correlation is 0.573693 Mean (abs) Error 0.612327 (0.547034)

;; on independent test data
;; RMSE 0.8054 Correlation is 0.5327 Mean (abs) Error 0.6073 (0.5290)

(set! f2b_duration_cart_tree
'
((name is #)
 ((emph_sil is +)
  ((0.0 -0.5))
  ((R:Segment.p.R:SylStructure.parent.parent.pbreak is BB)
   ((0.0 2.0))  
   ((0.0 0.0))))
((R:SylStructure.parent.accented is 0)
 ((R:Segment.p.ph_ctype is 0)
  ((R:Segment.n.ph_cplace is 0)
   ((ph_ctype is n)
    ((R:SylStructure.parent.position_type is initial)
     ((ph_cplace is a)
      ((0.675606 -0.068741))
      ((0.674321 0.204279)))
     ((ph_cplace is l)
      ((0.688993 -0.124997))
      ((R:SylStructure.parent.syl_out < 10)
       ((0.610881 -0.394451))
       ((0.664504 -0.603196)))))
    ((ph_ctype is r)
     ((lisp_onset_glide is 0)
      ((R:SylStructure.parent.R:Syllable.n.syl_break is 0)
       ((0.949991 0.619256))
       ((1.05066 0.979668)))
      ((0.858728 0.457972)))
     ((R:SylStructure.parent.position_type is single)
      ((syl_initial is 0)
       ((ph_ctype is s)
        ((0.692981 -0.788933))
        ((0.834878 -0.116988)))
       ((R:SylStructure.parent.syl_out < 9.4)
        ((0.777932 0.357818))
        ((0.852909 0.115478))))
      ((R:Segment.n.ph_vrnd is +)
       ((ph_ctype is s)
        ((0.81305 0.87399))
        ((0.65978 0.418928)))
       ((R:SylStructure.parent.position_type is final)
        ((R:SylStructure.parent.parent.word_numsyls < 2.3)
         ((0.71613 -0.2888))
         ((0.642029 0.0624649)))
        ((R:Segment.nn.ph_cplace is a)
         ((R:SylStructure.parent.R:Syllable.n.syl_break is 1)
          ((R:SylStructure.parent.R:Syllable.nn.syl_break is 1)
           ((R:SylStructure.parent.position_type is initial)
            ((0.854092 0.384456))
            ((0.769274 0.10705)))
           ((lisp_coda_stop is 0)
            ((0.571763 0.0755348))
            ((0.632928 -0.11117))))
          ((lisp_coda_stop is 0)
           ((R:SylStructure.parent.syl_out < 8.6)
            ((0.555092 0.30006))
            ((0.552673 -0.0263481)))
           ((0.903186 0.519185))))
         ((R:Segment.nn.ph_cplace is p)
          ((0.563915 0.204967))
          ((R:Segment.nn.ph_cvox is -)
           ((ph_ctype is s)
            ((0.67653 0.227681))
            ((0.550623 0.435079)))
           ((R:SylStructure.parent.position_type is initial)
            ((0.93428 0.732003))
            ((0.84114 0.423214)))))))))))
   ((R:Segment.n.ph_ctype is s)
    ((ph_ctype is s)
     ((0.693376 -1.02719))
     ((R:Segment.n.ph_cplace is v)
      ((ph_ctype is r)
       ((0.539799 -0.344524))
       ((0.858576 0.154275)))
      ((R:SylStructure.parent.R:Syllable.n.syl_onsetsize < 1.2)
       ((lisp_onset_glide is 0)
        ((R:SylStructure.parent.R:Syllable.n.syl_break is 1)
         ((ph_ctype is n)
          ((R:Segment.nn.ph_cplace is a)
           ((0.64604 -0.643797))
           ((0.739746 -0.450649)))
          ((ph_ctype is f)
           ((0.657043 -0.462107))
           ((0.798438 -0.19569))))
         ((R:SylStructure.parent.syl_out < 8.4)
          ((lisp_coda_stop is 0)
           ((0.766789 -0.0484781))
           ((0.717203 -0.322113)))
          ((R:SylStructure.parent.position_type is single)
           ((0.508168 -0.412874))
           ((0.703458 -0.291121)))))
        ((0.574827 -0.65022)))
       ((0.801765 -0.120813)))))
    ((ph_ctype is n)
     ((R:Segment.n.ph_ctype is f)
      ((R:Segment.n.ph_cplace is b)
       ((0.797652 0.623764))
       ((R:Segment.n.ph_cplace is a)
        ((R:Segment.n.seg_onsetcoda is coda)
         ((0.675567 0.288251))
         ((0.854197 0.626272)))
        ((R:SylStructure.parent.R:Syllable.nn.syl_break is 1)
         ((0.660394 -0.225466))
         ((0.65275 0.0487195)))))
      ((R:Segment.n.ph_ctype is n)
       ((0.685613 -0.512227))
       ((0.736366 -0.104066))))
     ((R:Segment.n.ph_ctype is r)
      ((R:SylStructure.parent.position_type is initial)
       ((R:SylStructure.parent.R:Syllable.n.syl_onsetsize < 0.1)
        ((0.98185 0.152471))
        ((0.851907 0.788208)))
       ((ph_ctype is f)
        ((0.76106 0.406474))
        ((R:Segment.n.ph_cplace is a)
         ((1.01348 -0.0422549))
         ((0.786777 -0.714839)))))
      ((ph_cplace is b)
       ((R:SylStructure.parent.syl_out < 10.4)
        ((0.799025 0.0992277))
        ((0.851068 -0.115896)))
       ((R:Segment.n.ph_cplace is p)
        ((0.669855 -0.655488))
        ((ph_ctype is r)
         ((R:Segment.n.ph_cplace is a)
          ((1.00772 0.130892))
          ((0.635981 -0.35826)))
         ((R:Segment.n.ph_ctype is l)
          ((R:SylStructure.parent.R:Syllable.n.syl_break is 1)
           ((0.746089 -0.286007))
           ((0.89158 0.154432)))
          ((R:Segment.n.ph_cplace is b)
           ((1.04971 -0.0449782))
           ((R:SylStructure.parent.syl_out < 9.8)
            ((R:Segment.n.ph_ctype is f)
             ((R:Segment.n.seg_onsetcoda is coda)
              ((1.4144 0.143658))
              ((0.781116 -0.281483)))
             ((ph_vlng is 0)
              ((0.755959 -0.33462))
              ((0.81024 -0.615287))))
            ((R:SylStructure.parent.R:Syllable.n.syl_onsetsize < 0.3)
             ((0.7426 -0.24342))
             ((R:Segment.n.ph_ctype is f)
              ((R:Segment.n.ph_cplace is a)
               ((R:SylStructure.parent.position_type is single)
                ((0.578639 -0.322097))
                ((0.55826 -0.663238)))
               ((0.616575 -0.713688)))
              ((0.759572 -0.314116))))))))))))))
  ((R:Segment.n.ph_ctype is f)
   ((ph_ctype is 0)
    ((R:Segment.p.ph_ctype is r)
     ((R:SylStructure.parent.parent.word_numsyls < 2.2)
      ((R:SylStructure.parent.R:Syllable.nn.syl_break is 1)
       ((0.733193 -0.180968))
       ((0.563111 -0.467934)))
      ((0.426244 -0.758137)))
     ((ph_vlng is a)
      ((R:Segment.n.ph_cplace is b)
       ((R:Segment.nn.ph_cvox is +)
        ((0.680234 0.059855))
        ((R:SylStructure.parent.position_type is single)
         ((0.980851 0.443893))
         ((0.715307 0.112865))))
       ((R:Segment.p.ph_cplace is a)
        ((0.851224 0.695863))
        ((R:Segment.nn.ph_cvox is -)
         ((0.75892 0.195772))
         ((0.630633 0.478738)))))
      ((R:Segment.n.seg_onsetcoda is coda)
       ((R:Segment.n.ph_cplace is b)
        ((R:Segment.nn.ph_cplace is 0)
         ((0.815979 -0.477579))
         ((0.851491 -0.168622)))
        ((R:SylStructure.parent.position_type is single)
         ((R:Segment.nn.ph_cvox is +)
          ((1.14265 0.717697))
          ((0.814726 0.291482)))
         ((R:SylStructure.parent.R:Syllable.n.syl_break is 0)
          ((0.512322 -0.0749096))
          ((0.488216 0.112774)))))
       ((R:SylStructure.parent.position_type is final)
        ((0.693071 -0.200708))
        ((R:Segment.p.ph_cvox is +)
         ((0.489147 -0.378728))
         ((0.695396 -0.525028)))))))
    ((ph_vlng is s)
     ((0.464234 -0.162706))
     ((R:Segment.p.ph_cvox is +)
      ((R:SylStructure.parent.parent.word_numsyls < 2.2)
       ((0.566845 -0.616918))
       ((0.92747 -0.26777)))
      ((0.632833 -0.858295)))))
   ((R:Segment.n.ph_vrnd is 0)
    ((R:Segment.p.ph_ctype is r)
     ((ph_vlng is 0)
      ((0.845308 -0.23426))
      ((R:SylStructure.parent.syl_out < 4.8)
       ((R:Segment.n.ph_ctype is n)
        ((0.484602 -0.850587))
        ((0.535398 -0.586652)))
       ((R:SylStructure.parent.R:Syllable.n.syl_onsetsize < 0.3)
        ((ph_vlng is a)
         ((0.368898 -0.799533))
         ((lisp_coda_stop is 0)
          ((0.387923 -1.11431))
          ((0.407377 -0.859849))))
        ((R:Segment.n.ph_cplace is a)
         ((ph_vlng is a)
          ((0.382367 -0.787669))
          ((0.522121 -0.687376)))
         ((0.361185 -0.853639))))))
     ((ph_vlng is a)
      ((ph_ctype is 0)
       ((R:Segment.n.ph_ctype is s)
        ((R:Segment.p.ph_cvox is +)
         ((R:Segment.p.ph_cplace is d)
          ((0.502849 -0.232866))
          ((R:SylStructure.parent.position_type is initial)
           ((0.641714 -0.0545426))
           ((R:SylStructure.parent.parent.word_numsyls < 2.6)
            ((0.613913 0.373746))
            ((R:Segment.n.ph_cplace is v)
             ((0.581158 0.310101))
             ((0.628758 -0.068165))))))
         ((R:SylStructure.parent.position_type is mid)
          ((0.459281 -0.553794))
          ((0.728208 -0.138806))))
        ((R:Segment.p.ph_cplace is v)
         ((0.32179 -0.728364))
         ((R:Segment.p.ph_cplace is l)
          ((0.562971 -0.550272))
          ((R:SylStructure.parent.position_type is initial)
           ((0.937298 -0.0246324))
           ((R:Segment.p.ph_cvox is +)
            ((R:Segment.n.ph_ctype is n)
             ((R:Segment.n.ph_cplace is a)
              ((R:SylStructure.parent.R:Syllable.nn.syl_break is 0)
               ((0.434029 -0.404793))
               ((1.05548 -0.103717)))
              ((0.408372 -0.556145)))
             ((0.712335 -0.118776)))
            ((R:SylStructure.parent.R:Syllable.n.syl_onsetsize < 0.3)
             ((0.379593 -0.658075))
             ((0.549207 -0.494876))))))))
       ((R:SylStructure.parent.position_type is final)
        ((0.597124 -0.649729))
        ((0.628822 -1.03743))))
      ((ph_ctype is s)
       ((R:Segment.n.ph_ctype is r)
        ((R:SylStructure.parent.syl_out < 8.4)
         ((0.760328 0.31651))
         ((0.738363 -0.0177161)))
        ((R:Segment.n.ph_ctype is l)
         ((0.649328 -0.108791))
         ((0.594945 -0.712753))))
       ((ph_vlng is s)
        ((R:Segment.n.ph_ctype is s)
         ((R:Segment.n.ph_cplace is v)
          ((R:Segment.nn.ph_cplace is a)
           ((0.583211 0.0724331))
           ((0.434605 -0.229857)))
          ((R:Segment.p.ph_cplace is a)
           ((R:SylStructure.parent.position_type is single)
            ((0.785502 -0.00061573))
            ((0.544995 -0.432984)))
           ((R:Segment.nn.ph_cplace is 0)
            ((0.507071 -0.715041))
            ((R:SylStructure.parent.R:Syllable.nn.syl_break is 0)
             ((0.506404 -0.573733))
             ((0.62466 -0.3356))))))
         ((R:Segment.p.ph_cplace is l)
          ((0.571756 -0.819693))
          ((lisp_coda_stop is 0)
           ((R:SylStructure.parent.position_type is initial)
            ((0.906891 -0.352911))
            ((R:Segment.n.ph_ctype is r)
             ((0.620335 -0.445714))
             ((R:SylStructure.parent.parent.word_numsyls < 2.5)
              ((R:Segment.p.ph_cvox is +)
               ((R:SylStructure.parent.R:Syllable.nn.syl_break is 0)
                ((0.484057 -0.781483))
                ((0.653917 -0.615429)))
               ((0.754814 -0.531845)))
              ((0.493988 -0.881596)))))
           ((0.792979 -0.32648)))))
        ((R:Segment.p.ph_cvox is +)
         ((R:SylStructure.parent.R:Syllable.n.syl_onsetsize < 0.3)
          ((lisp_coda_stop is 0)
           ((0.913526 -0.195111))
           ((0.56564 -0.64867)))
          ((R:SylStructure.parent.position_type is single)
           ((R:Segment.n.ph_cplace is a)
            ((R:SylStructure.parent.R:Syllable.nn.syl_break is 1)
             ((0.790882 -0.488954))
             ((0.780221 -0.185138)))
            ((0.487794 -0.691338)))
           ((R:Segment.p.ph_ctype is n)
            ((R:SylStructure.parent.R:Syllable.nn.syl_break is 1)
             ((0.595729 -0.771698))
             ((0.57908 -1.06592)))
            ((R:Segment.pp.ph_vfront is 0)
             ((0.591417 -0.784735))
             ((0.486298 -0.436971))))))
         ((ph_vlng is 0)
          ((0.629869 -0.960652))
          ((R:Segment.n.ph_ctype is r)
           ((R:Segment.nn.ph_cplace is 0)
            ((0.591783 -0.671576))
            ((R:Segment.nn.ph_cvox is +)
             ((0.365135 -0.822844))
             ((0.428573 -0.988434))))
           ((lisp_coda_stop is 0)
            ((R:Segment.p.ph_cplace is a)
             ((R:Segment.n.ph_cplace is a)
              ((0.428189 -0.730057))
              ((0.337443 -0.861764)))
             ((0.57354 -0.494602)))
            ((0.497606 -0.414451))))))))))
    ((ph_vlng is l)
     ((R:Segment.pp.ph_vfront is 1)
      ((0.937199 0.833877))
      ((R:SylStructure.parent.syl_out < 12.7)
       ((0.729202 0.344121))
       ((0.71086 0.101855))))
     ((syl_initial is 0)
      ((R:Segment.p.ph_ctype is r)
       ((R:Segment.nn.ph_cplace is a)
        ((0.844815 0.175273))
        ((0.662523 -0.297527)))
       ((ph_vlng is 0)
        ((R:Segment.p.ph_ctype is s)
         ((R:SylStructure.parent.syl_out < 14.6)
          ((R:SylStructure.parent.R:Syllable.nn.syl_break is 0)
           ((0.665332 -0.610529))
           ((0.42276 -0.848942)))
          ((0.427946 -0.980726)))
         ((R:SylStructure.parent.position_type is single)
          ((R:SylStructure.parent.R:Syllable.n.syl_break is 1)
           ((0.523367 -0.825038))
           ((0.635654 -0.535303)))
          ((R:SylStructure.parent.position_type is final)
           ((0.515996 -0.707614))
           ((ph_cplace is a)
            ((lisp_coda_stop is 0)
             ((0.689738 0.0446601))
             ((0.698347 -0.268593)))
            ((R:Segment.nn.ph_cplace is a)
             ((0.706504 -0.659172))
             ((0.775589 -0.201769)))))))
        ((0.79472 -0.0539192))))
      ((ph_ctype is s)
       ((R:SylStructure.parent.position_type is single)
        ((R:Segment.p.ph_ctype is f)
         ((0.641302 0.532411))
         ((R:Segment.n.ph_vrnd is +)
          ((0.800655 0.325651))
          ((0.894711 0.0487864))))
        ((R:SylStructure.parent.position_type is initial)
         ((R:Segment.nn.ph_cplace is a)
          ((0.618082 -0.0190591))
          ((0.733637 0.156329)))
         ((ph_cplace is a)
          ((R:SylStructure.parent.parent.word_numsyls < 2.3)
           ((0.372869 -0.0827845))
           ((0.494988 0.0882778)))
          ((0.593526 -0.335404)))))
       ((R:Segment.p.ph_cvox is +)
        ((R:Segment.p.ph_ctype is n)
         ((R:SylStructure.parent.syl_out < 5.4)
          ((1.0207 -0.152517))
          ((R:SylStructure.parent.R:Syllable.p.stress is 0)
           ((0.711277 -0.513467))
           ((0.509207 -0.726794))))
         ((ph_cplace is g)
          ((0.545188 -0.568352))
          ((R:Segment.p.ph_cplace is a)
           ((ph_ctype is n)
            ((0.61149 -0.325094))
            ((R:SylStructure.parent.position_type is single)
             ((R:Segment.p.ph_ctype is r)
              ((0.525282 0.395446))
              ((R:SylStructure.parent.R:Syllable.n.syl_break is 1)
               ((0.85778 0.0760293))
               ((0.704055 0.290369))))
             ((R:Segment.pp.ph_vfront is 0)
              ((0.590093 0.136983))
              ((0.734563 -0.0570759)))))
           ((R:Segment.pp.ph_vfront is 2)
            ((0.519485 -0.477174))
            ((0.707546 -0.13584))))))
        ((R:SylStructure.parent.position_type is single)
         ((R:Segment.p.ph_ctype is f)
          ((0.797877 0.00462775))
          ((R:Segment.pp.ph_vfront is 1)
           ((0.852184 -0.259914))
           ((0.65313 -0.492506))))
         ((R:SylStructure.parent.position_type is initial)
          ((0.662516 -0.45585))
          ((lisp_onset_glide is 0)
           ((0.652534 -0.652428))
           ((0.482818 -0.885728))))))))))))
 ((syl_initial is 0)
  ((ph_cplace is 0)
   ((R:SylStructure.parent.position_type is single)
    ((R:Segment.n.ph_ctype is f)
     ((R:Segment.p.ph_cplace is a)
      ((R:Segment.n.ph_cplace is a)
       ((R:Segment.pp.ph_vfront is 0)
        ((1.06157 1.30945))
        ((1.12041 1.85843)))
       ((1.05622 0.921414)))
      ((R:Segment.nn.ph_cvox is -)
       ((1.03073 0.916168))
       ((1.06857 0.452851))))
     ((R:Segment.p.ph_ctype is r)
      ((R:Segment.n.ph_cplace is v)
       ((1.22144 0.672433))
       ((R:Segment.p.ph_cplace is l)
        ((0.859749 -0.315152))
        ((R:Segment.nn.ph_cvox is -)
         ((0.89862 0.131037))
         ((0.760033 -0.121252)))))
      ((R:SylStructure.parent.syl_out < 8.8)
       ((R:SylStructure.parent.syl_out < 0.8)
        ((1.06821 1.63716))
        ((R:Segment.n.ph_cplace is a)
         ((R:Segment.p.ph_cvox is +)
          ((1.04477 0.581686))
          ((R:Segment.nn.ph_cvox is +)
           ((0.769059 0.301576))
           ((0.953428 0.0764058))))
         ((R:Segment.p.ph_cplace is a)
          ((1.01367 0.507761))
          ((1.2827 0.945031)))))
       ((R:Segment.n.ph_cplace is l)
        ((0.618397 -0.0873608))
        ((R:SylStructure.parent.R:Syllable.n.syl_break is 0)
         ((R:Segment.p.ph_cvox is +)
          ((0.817182 0.477262))
          ((0.792181 -0.0592145)))
         ((R:SylStructure.parent.R:Syllable.p.stress is 0)
          ((R:SylStructure.parent.syl_out < 16)
           ((0.995411 0.497843))
           ((0.784087 0.152266)))
          ((1.11816 0.716352))))))))
    ((R:Segment.n.ph_ctype is f)
     ((R:SylStructure.parent.position_type is final)
      ((1.35724 1.06028))
      ((R:Segment.p.ph_ctype is r)
       ((R:SylStructure.parent.syl_out < 8.6)
        ((0.511716 -0.0833005))
        ((0.492142 -0.30212)))
       ((R:Segment.n.ph_cplace is b)
        ((0.53059 0.00266551))
        ((R:SylStructure.parent.parent.word_numsyls < 2.3)
         ((ph_vlng is l)
          ((0.433396 0.821463))
          ((0.66915 0.415614)))
         ((0.501369 0.154721))))))
     ((R:SylStructure.parent.position_type is final)
      ((R:Segment.n.ph_ctype is s)
       ((1.03896 0.524706))
       ((R:SylStructure.parent.R:Syllable.p.stress is 0)
        ((1.15147 0.428386))
        ((R:Segment.p.ph_cplace is a)
         ((0.919929 0.0314637))
         ((0.716168 -0.366629)))))
      ((R:SylStructure.parent.R:Syllable.n.syl_break is 4)
       ((0.816778 0.408786))
       ((lisp_onset_glide is 0)
        ((R:Segment.p.ph_ctype is n)
         ((R:Segment.n.ph_ctype is s)
          ((0.532911 -0.153851))
          ((0.633518 -0.762353)))
         ((R:Segment.p.ph_cvox is -)
          ((R:Segment.p.ph_cplace is g)
           ((0.618376 -0.593197))
           ((R:SylStructure.parent.R:Syllable.n.syl_break is 1)
            ((R:Segment.pp.ph_vfront is 0)
             ((R:Segment.n.ph_ctype is n)
              ((0.554085 -0.058903))
              ((R:Segment.p.ph_cplace is a)
               ((0.59842 -0.174458))
               ((0.585539 -0.349335))))
             ((0.500857 -0.416613)))
            ((R:SylStructure.parent.syl_out < 7)
             ((0.616683 -0.00213272))
             ((0.631444 -0.141773)))))
          ((R:SylStructure.parent.R:Syllable.n.syl_break is 0)
           ((0.5198 -0.151901))
           ((ph_vlng is s)
            ((0.677428 0.203522))
            ((0.780789 0.375429))))))
        ((R:Segment.nn.ph_cplace is a)
         ((R:SylStructure.parent.R:Syllable.p.stress is 0)
          ((0.594604 -0.27832))
          ((0.736114 -0.422756)))
         ((R:Segment.p.ph_cplace is a)
          ((R:SylStructure.parent.R:Syllable.nn.syl_break is 1)
           ((0.512186 -0.732785))
           ((0.550759 -0.506471)))
          ((0.47297 -0.791841)))))))))
   ((R:Segment.p.ph_ctype is 0)
    ((R:SylStructure.parent.position_type is final)
     ((lisp_coda_stop is 0)
      ((ph_ctype is f)
       ((R:Segment.nn.ph_cplace is 0)
        ((1.00978 0.366105))
        ((0.80682 -0.0827529)))
       ((R:Segment.n.ph_cplace is a)
        ((R:Segment.nn.ph_cvox is -)
         ((1.07097 1.77503))
         ((1.14864 1.14754)))
        ((R:Segment.n.ph_vrnd is -)
         ((0.883474 0.286471))
         ((R:SylStructure.parent.R:Syllable.nn.syl_break is 1)
          ((1.22264 0.884142))
          ((1.03401 0.658192))))))
      ((ph_cplace is a)
       ((R:SylStructure.parent.syl_out < 6.4)
        ((R:SylStructure.parent.syl_out < 0.6)
         ((1.07956 0.602849))
         ((1.12301 0.0555897)))
        ((R:SylStructure.parent.R:Syllable.p.stress is 0)
         ((0.898888 -0.17527))
         ((0.940932 0.274301))))
       ((1.10093 -0.68098))))
     ((R:Segment.n.ph_ctype is s)
      ((ph_cplace is v)
       ((0.639932 -1.33353))
       ((R:SylStructure.parent.position_type is single)
        ((R:SylStructure.parent.R:Syllable.n.syl_break is 0)
         ((lisp_coda_stop is 0)
          ((0.822882 -0.131692))
          ((0.971957 -0.385365)))
         ((R:Segment.nn.ph_cvox is -)
          ((1.06611 0.183678))
          ((lisp_coda_stop is 0)
           ((0.967183 0.0925019))
           ((0.876026 -0.230108)))))
        ((ph_ctype is f)
         ((R:SylStructure.parent.syl_out < 13)
          ((0.589198 -0.655594))
          ((0.476651 -0.926625)))
         ((R:SylStructure.parent.syl_out < 5)
          ((0.682936 -0.227662))
          ((R:SylStructure.parent.R:Syllable.p.stress is 0)
           ((R:Segment.nn.ph_cplace is a)
            ((0.447309 -0.700998))
            ((0.626113 -0.468853)))
           ((0.657893 -0.383607)))))))
      ((ph_ctype is r)
       ((R:Segment.nn.ph_cvox is -)
        ((1.15158 1.15233))
        ((R:Segment.n.ph_vrnd is -)
         ((1.05554 0.533749))
         ((0.955478 0.0841894))))
       ((ph_ctype is l)
        ((R:Segment.n.ph_ctype is 0)
         ((R:Segment.nn.ph_cplace is a)
          ((0.766431 0.28943))
          ((1.48633 1.09574)))
         ((R:SylStructure.parent.position_type is single)
          ((1.01777 0.474653))
          ((0.545859 -0.402743))))
        ((R:SylStructure.parent.syl_out < 4.8)
         ((R:Segment.n.ph_vc is +)
          ((ph_ctype is n)
           ((0.776645 -0.433859))
           ((R:SylStructure.parent.R:Syllable.p.stress is 0)
            ((R:SylStructure.parent.R:Syllable.nn.syl_break is 0)
             ((0.776179 0.23435))
             ((R:SylStructure.parent.parent.word_numsyls < 2.2)
              ((0.744272 -0.0859672))
              ((0.782605 0.115647))))
            ((0.626541 -0.167615))))
          ((R:Segment.n.seg_onsetcoda is coda)
           ((1.28499 0.864144))
           ((ph_cplace is a)
            ((0.926103 0.0435837))
            ((0.839172 -0.189514)))))
         ((R:Segment.n.ph_ctype is n)
          ((R:SylStructure.parent.R:Syllable.n.syl_onsetsize < 0.1)
           ((0.973489 -0.203415))
           ((0.777589 -0.849733)))
          ((ph_ctype is n)
           ((R:SylStructure.parent.position_type is initial)
            ((R:Segment.n.ph_vc is +)
             ((0.743482 -0.53384))
             ((0.619309 -0.0987861)))
            ((R:SylStructure.parent.R:Syllable.n.syl_onsetsize < 0.2)
             ((1.15555 0.0786295))
             ((1.06689 0.681662))))
           ((R:Segment.n.ph_ctype is r)
            ((R:SylStructure.parent.syl_out < 8.9)
             ((0.752079 -0.237421))
             ((R:SylStructure.parent.R:Syllable.p.stress is 0)
              ((0.664182 -0.041521))
              ((0.772712 0.103499))))
            ((R:Segment.n.seg_onsetcoda is coda)
             ((R:SylStructure.parent.position_type is mid)
              ((R:SylStructure.parent.parent.word_numsyls < 3.3)
               ((0.715944 -0.275113))
               ((0.675729 0.202848)))
              ((R:Segment.n.ph_vrnd is -)
               ((R:SylStructure.parent.syl_out < 8.3)
                ((ph_ctype is s)
                 ((0.82747 -0.116723))
                 ((0.689586 -0.303909)))
                ((R:SylStructure.parent.syl_out < 17.7)
                 ((R:SylStructure.parent.R:Syllable.nn.syl_break is 0)
                  ((0.659686 -0.621268))
                  ((ph_cplace is a)
                   ((0.861741 -0.285324))
                   ((0.507102 -0.444082))))
                 ((0.850664 -0.269084))))
               ((R:SylStructure.parent.R:Syllable.nn.syl_break is 0)
                ((0.878643 -0.255833))
                ((0.98882 0.115252)))))
             ((ph_cplace is a)
              ((R:SylStructure.parent.syl_out < 13)
               ((0.850625 -0.289333))
               ((0.788154 -0.44844)))
              ((0.70482 -0.630276))))))))))))
    ((R:Segment.p.ph_ctype is l)
     ((R:SylStructure.parent.position_type is single)
      ((0.873748 -0.21639))
      ((lisp_coda_stop is 0)
       ((0.71002 0.428132))
       ((0.703501 0.015833))))
     ((ph_vlng is 0)
      ((R:Segment.p.ph_ctype is r)
       ((R:SylStructure.parent.position_type is initial)
        ((0.907151 -0.494409))
        ((ph_ctype is s)
         ((0.782539 -0.398555))
         ((R:Segment.p.ph_cplace is 0)
          ((0.767435 -0.298857))
          ((0.767046 0.151217)))))
       ((ph_cplace is a)
        ((R:Segment.n.ph_ctype is r)
         ((R:SylStructure.parent.R:Syllable.p.stress is 0)
          ((0.689367 0.0195991))
          ((0.64446 -0.256648)))
         ((R:Segment.n.ph_vc is +)
          ((ph_ctype is s)
           ((R:Segment.nn.ph_cvox is +)
            ((R:SylStructure.parent.R:Syllable.nn.syl_break is 1)
             ((0.59482 -0.214443))
             ((0.745691 0.0292177)))
            ((0.523103 -0.391245)))
           ((R:Segment.p.ph_cvox is +)
            ((R:Segment.p.ph_cplace is a)
             ((0.524304 -0.428306))
             ((0.605117 -0.165604)))
            ((R:Segment.p.ph_ctype is f)
             ((0.491251 -0.455353))
             ((lisp_coda_stop is 0)
              ((R:SylStructure.parent.R:Syllable.n.syl_break is 1)
               ((0.175021 -1.02136))
               ((0.264113 -0.976809)))
              ((R:SylStructure.parent.R:Syllable.n.syl_onsetsize < 0.3)
               ((0.704803 -0.716976))
               ((0.300317 -0.924727)))))))
          ((ph_ctype is f)
           ((R:SylStructure.parent.syl_out < 13)
            ((R:Segment.n.ph_ctype is s)
             ((0.731994 -0.711044))
             ((0.768008 -0.415076)))
            ((0.691821 -0.803284)))
           ((R:Segment.nn.ph_cplace is 0)
            ((R:Segment.n.ph_cplace is a)
             ((0.569567 -0.993506))
             ((0.689849 -0.761696)))
            ((0.386818 -1.14744))))))
        ((R:Segment.p.seg_onsetcoda is coda)
         ((R:Segment.p.ph_cplace is a)
          ((0.746337 -0.866206))
          ((0.532751 -1.22185)))
         ((ph_cplace is l)
          ((0.74942 -0.820648))
          ((0.685988 -0.298146))))))
      ((0.812766 0.17291))))))
  ((R:SylStructure.parent.position_type is mid)
   ((ph_ctype is r)
    ((0.577775 -0.54714))
    ((R:Segment.n.ph_ctype is f)
     ((R:SylStructure.parent.R:Syllable.nn.syl_break is 0)
      ((0.370448 0.00076407))
      ((0.460385 0.20631)))
     ((R:Segment.p.ph_cvox is -)
      ((ph_vlng is 0)
       ((0.615959 -0.57434))
       ((0.50852 -0.197814)))
      ((R:Segment.n.ph_ctype is 0)
       ((1.34281 0.477163))
       ((R:SylStructure.parent.R:Syllable.nn.syl_break is 1)
        ((0.59975 -0.1342))
        ((0.640294 -0.32653)))))))
   ((R:Segment.n.ph_ctype is f)
    ((R:SylStructure.parent.position_type is initial)
     ((0.758739 0.311943))
     ((R:Segment.n.seg_onsetcoda is coda)
      ((R:Segment.p.ph_ctype is f)
       ((1.28746 1.99771))
       ((R:Segment.pp.ph_vfront is 1)
        ((1.42474 1.76925))
        ((R:SylStructure.parent.R:Syllable.n.syl_break is 1)
         ((0.979414 1.37583))
         ((1.00321 1.06671)))))
      ((1.15222 0.852004))))
    ((R:Segment.p.ph_ctype is 0)
     ((R:Segment.n.ph_ctype is s)
      ((R:SylStructure.parent.R:Syllable.nn.syl_break is 1)
       ((0.664807 -0.0880262))
       ((0.573589 0.217234)))
      ((ph_ctype is s)
       ((ph_cplace is l)
        ((0.800348 0.66579))
        ((ph_cplace is a)
         ((0.859133 1.46854))
         ((R:SylStructure.parent.position_type is single)
          ((0.692229 1.23671))
          ((0.552426 0.923928)))))
       ((R:SylStructure.parent.syl_out < 9.2)
        ((R:SylStructure.parent.position_type is single)
         ((R:SylStructure.parent.syl_out < 3.6)
          ((1.01673 1.26824))
          ((0.848274 0.92375)))
         ((R:SylStructure.parent.R:Syllable.n.syl_break is 1)
          ((R:Segment.nn.ph_cplace is a)
           ((0.788163 0.818855))
           ((0.822028 1.01227)))
          ((0.8365 0.483313))))
        ((lisp_coda_stop is 0)
         ((R:Segment.nn.ph_cvox is +)
          ((R:SylStructure.parent.R:Syllable.n.syl_onsetsize < 0.2)
           ((0.807795 0.670829))
           ((0.773774 0.435486)))
          ((0.849529 0.103561)))
         ((0.858848 0.763836))))))
     ((R:Segment.n.ph_vrnd is -)
      ((ph_vlng is 0)
       ((R:SylStructure.parent.position_type is final)
        ((ph_cplace is a)
         ((R:Segment.nn.ph_cvox is -)
          ((0.691915 -0.42124))
          ((R:Segment.p.ph_cplace is a)
           ((0.773696 0.354001))
           ((0.65495 -0.14321))))
         ((0.610433 -0.479739)))
        ((R:Segment.p.ph_ctype is r)
         ((R:SylStructure.parent.R:Syllable.n.syl_break is 0)
          ((0.560921 0.384674))
          ((0.895267 0.746476)))
         ((R:Segment.p.ph_ctype is l)
          ((0.704694 0.568012))
          ((R:Segment.p.ph_cplace is b)
           ((1.34739 0.539049))
           ((R:Segment.p.ph_ctype is s)
            ((R:SylStructure.parent.syl_out < 12.9)
             ((R:SylStructure.parent.R:Syllable.p.stress is 0)
              ((0.807285 0.151429))
              ((0.988033 0.383763)))
             ((0.878655 0.102291)))
            ((ph_ctype is n)
             ((0.759582 -0.315096))
             ((R:SylStructure.parent.syl_out < 8.8)
              ((R:Segment.pp.ph_vfront is 0)
               ((0.846546 0.000647117))
               ((R:Segment.pp.ph_vfront is 1)
                ((0.586216 0.150701))
                ((0.793898 0.379041))))
              ((lisp_coda_stop is 0)
               ((ph_ctype is f)
                ((0.74736 -0.31103))
                ((0.715751 -0.00576581)))
               ((0.914486 0.17528))))))))))
       ((1.24204 0.908819)))
      ((ph_ctype is s)
       ((ph_cplace is a)
        ((0.864408 1.35528))
        ((R:Segment.n.seg_onsetcoda is coda)
         ((0.85602 0.344576))
         ((0.869622 0.659223))))
       ((R:Segment.nn.ph_cvox is -)
        ((R:Segment.n.ph_ctype is s)
         ((R:Segment.nn.ph_cplace is 0)
          ((0.942964 1.27475))
          ((0.978218 0.650268)))
         ((R:SylStructure.parent.syl_out < 3.9)
          ((R:SylStructure.parent.R:Syllable.p.stress is 0)
           ((1.32463 1.05026))
           ((0.896966 0.417727)))
          ((R:Segment.p.ph_cplace is a)
           ((R:SylStructure.parent.R:Syllable.nn.syl_break is 0)
            ((0.776698 0.195369))
            ((0.969518 0.432394)))
           ((0.799096 -0.0203318)))))
        ((ph_cplace is a)
         ((R:SylStructure.parent.R:Syllable.p.stress is 0)
          ((0.680861 -0.315846))
          ((R:SylStructure.parent.R:Syllable.nn.syl_break is 1)
           ((0.954393 0.0965487))
           ((0.884928 0.372884))))
         ((lisp_coda_stop is 0)
          ((R:SylStructure.parent.R:Syllable.p.stress is 0)
           ((R:SylStructure.parent.position_type is final)
            ((1.03696 0.565834))
            ((0.906661 0.277961)))
           ((R:SylStructure.parent.position_type is final)
            ((0.778429 -0.0967381))
            ((0.863993 0.314023))))
          ((R:Segment.p.ph_cplace is a)
           ((R:SylStructure.parent.R:Syllable.p.stress is 0)
            ((0.898898 0.571009))
            ((0.830278 0.787486)))
           ((1.1101 0.333888)))))))))))))
;; RMSE 0.7726 Correlation is 0.5943 Mean (abs) Error 0.5752 (0.5160)

))

(provide 'f2bdurtreeZ)
