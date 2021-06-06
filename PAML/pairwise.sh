### For null model
     seqfile = ./sample_input_pw.txt
      outfile = ./output_null.txt

        noisy = 9
      verbose = 0
      runmode = -2

      seqtype = 1
    CodonFreq = 2
        clock = 0
       aaDist = 0
        model = 0
      NSsites = 0
        icode = 0
        Mgene = 0
    fix_kappa = 0
        kappa = 2
    fix_omega = 1
	omega = 1
       

        getSE = 0
 RateAncestor = 0

   Small_Diff = .5e-6
    cleandata = 1
   fix_blength = 0  * 0: ignore, -1: random, 1: initial, 2: fixed


### For alternate model
     seqfile = ./sample_input_pw.txt
      outfile = ./output_alt.txt

        noisy = 9
      verbose = 0
      runmode = -2

      seqtype = 1
    CodonFreq = 2
        clock = 0
       aaDist = 0
        model = 0
      NSsites = 0
        icode = 0
        Mgene = 0
    fix_kappa = 0
        kappa = 2
    fix_omega = 0
	omega = 1       

        getSE = 0
 RateAncestor = 0

   Small_Diff = .5e-6
    cleandata = 1
   fix_blength = 0  * 0: ignore, -1: random, 1: initial, 2: fixed


