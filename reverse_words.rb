# REMOVE CHARACTERS 
# Author: Anthony lombardi

def comb
{
    long r, n, i;

    n = RARRAY_LEN(ary);                  /* Array length */
    RETURN_ENUMERATOR(ary, 1, &num);      /* Return enumerator if no block */
    r = NUM2LONG(num);                    /* Permutation size from argument */

    if (r < 0) {
        /* no permutations: yield nothing */
    }
    else if (r == 0) { /* exactly one permutation: the zero-length array */
        rb_yield(rb_ary_new2(0));
    }
    else if (r == 1) { /* this is a special, easy case */
        for (i = 0; i < RARRAY_LEN(ary); i++) {
            rb_yield(rb_ary_new3(1, RARRAY_PTR(ary)[i]));
        }
    }
    else {             /* this is the general case */
        volatile VALUE t0 = tmpbuf(r, sizeof(long));
        long *p = (long*)RSTRING_PTR(t0);
        VALUE ary0 = ary_make_shared_copy(ary); /* private defensive copy of ary */
        RBASIC(ary0)->klass = 0;

        rpermute0(n, r, p, 0, ary0); /* compute and yield repeated permutations */
        tmpbuf_discard(t0);
        RBASIC(ary0)->klass = rb_cArray;
    }
    return ary;
}
end


def string_scrubber string 
	s =	string.split(',')
	a = s[1].split(//)
	#comb = a.combination(s[0].to_i).to_a
	comb = (s[0].to_i..s[0].to_i).flat_map{|n| a.repeated_permutation(n).map(&:join).uniq}
	puts comb.join(',')
end

ARGF.each do |line|
  string_scrubber( line.chomp )
end