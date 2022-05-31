!==================================================================================================================================!
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!==================================================================================================================================!
program test_suite_M_datapac
use, intrinsic :: ISO_FORTRAN_ENV, only : INT8, INT16, INT32, INT64       !  1           2           4           8
use, intrinsic :: ISO_FORTRAN_ENV, only : REAL32, REAL64, REAL128         !  4           8          10
use M_msg
use M_verify, only : unit_check_start,unit_check,unit_check_done,unit_check_good,unit_check_bad,unit_check_msg
use M_verify, only : unit_check_level
use M_verify, only : unit_check_command, unit_check_keep_going, unit_check_level, unit_check_stop
use M_verify,   only : unit_check_command, unit_check_keep_going, unit_check_level
!use M_test_suite_M_anything
!use M_anything, only : anyinteger_to_string, anyscalar_to_int64
!use M_anything, only : anyscalar_to_real, anyscalar_to_double, anyscalar_to_real128
!use M_anything, only : anything_to_bytes, bytes_to_anything
!use M_anything, only : empty, assignment(=)

implicit none
!! setup
   unit_check_command=''
   unit_check_keep_going=.true.
   unit_check_level=0
!! test
   call test_autoco()
   call test_betran()
   call test_bincdf()
   call test_binppf()
   call test_binran()
   call test_caucdf()
   call test_caupdf()
   call test_cauplt()
   call test_cauppf()
   call test_cauran()
   call test_causf()
   call test_chscdf()
   call test_chsplt()
   call test_chsppf()
   call test_chsran()
   call test_code()
   call test_copy()
   call test_corr()
   call test_count()
   call test_decomp()
   call test_define()
   call test_delete()
   call test_demod()
   call test_dexcdf()
   call test_dexpdf()
   call test_dexplt()
   call test_dexppf()
   call test_dexran()
   call test_dexsf()
   call test_discr2()
   call test_discr3()
   call test_discre()
   call test_dot()
   call test_ev1cdf()
   call test_ev1plt()
   call test_ev1ppf()
   call test_ev1ran()
   call test_ev2cdf()
   call test_ev2plt()
   call test_ev2ppf()
   call test_ev2ran()
   call test_expcdf()
   call test_exppdf()
   call test_expplt()
   call test_expppf()
   call test_expran()
   call test_expsf()
   call test_extrem()
   call test_fcdf()
   call test_fourie()
   call test_fran()
   call test_freq()
   call test_gamcdf()
   call test_gamplt()
   call test_gamppf()
   call test_gamran()
   call test_geocdf()
   call test_geoplt()
   call test_geoppf()
   call test_georan()
   call test_hfncdf()
   call test_hfnplt()
   call test_hfnppf()
   call test_hfnran()
   call test_hist()
   call test_invxwx()
   call test_lamcdf()
   call test_lampdf()
   call test_lamplt()
   call test_lamppf()
   call test_lamran()
   call test_lamsf()
   call test_lgncdf()
   call test_lgnplt()
   call test_lgnppf()
   call test_lgnran()
   call test_loc()
   call test_logcdf()
   call test_logpdf()
   call test_logplt()
   call test_logppf()
   call test_logran()
   call test_logsf()
   call test_max()
   call test_mean()
   call test_median()
   call test_midm()
   call test_midr()
   call test_min()
   call test_move()
   call test_nbcdf()
   call test_nbppf()
   call test_nbran()
   call test_norcdf()
   call test_norout()
   call test_norpdf()
   call test_norplt()
   call test_norppf()
   call test_norran()
   call test_norsf()
   call test_parcdf()
   call test_parplt()
   call test_parppf()
   call test_parran()
   call test_plot()
   call test_plot10()
   call test_plot6()
   call test_plot7()
   call test_plot8()
   call test_plot9()
   call test_plotc()
   call test_plotco()
   call test_plotct()
   call test_plots()
   call test_plotsc()
   call test_plotsp()
   call test_plotst()
   call test_plott()
   call test_plotu()
   call test_plotx()
   call test_plotxt()
   call test_plotxx()
   call test_pltsct()
   call test_pltxxt()
   call test_poicdf()
   call test_poiplt()
   call test_poippf()
   call test_poiran()
   call test_poly()
   call test_propor()
   call test_range()
   call test_rank()
   call test_ranper()
   call test_read()
   call test_readg()
   call test_relsd()
   call test_replac()
   call test_retain()
   call test_runs()
   call test_sampp()
   call test_scale()
   call test_sd()
   call test_skipr()
   call test_sort()
   call test_sortc()
   call test_sortp()
   call test_spcorr()
   call test_stmom3()
   call test_stmom4()
   call test_subse1()
   call test_subse2()
   call test_subset()
   call test_tail()
   call test_tcdf()
   call test_time()
   call test_tol()
   call test_tplt()
   call test_tppf()
   call test_tran()
   call test_trim()
   call test_unicdf()
   call test_unimed()
   call test_unipdf()
   call test_uniplt()
   call test_unippf()
   call test_uniran()
   call test_unisf()
   call test_var()
   call test_weib()
   call test_weicdf()
   call test_weiplt()
   call test_weippf()
   call test_weiran()
   call test_wind()
   call test_write()
!! teardown
   call unit_check_stop()
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()=
!===================================================================================================================================
contains
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_autoco()
implicit none
   call unit_check_start('autoco',msg='')
   !!call unit_check('autoco', 0.eq.0, 'checking',100)
   call unit_check_done('autoco',msg='')
end subroutine test_autoco
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_betran()
implicit none
   call unit_check_start('betran',msg='')
   !!call unit_check('betran', 0.eq.0, 'checking',100)
   call unit_check_done('betran',msg='')
end subroutine test_betran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_bincdf()
implicit none
   call unit_check_start('bincdf',msg='')
   !!call unit_check('bincdf', 0.eq.0, 'checking',100)
   call unit_check_done('bincdf',msg='')
end subroutine test_bincdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_binppf()
implicit none
   call unit_check_start('binppf',msg='')
   !!call unit_check('binppf', 0.eq.0, 'checking',100)
   call unit_check_done('binppf',msg='')
end subroutine test_binppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_binran()
implicit none
   call unit_check_start('binran',msg='')
   !!call unit_check('binran', 0.eq.0, 'checking',100)
   call unit_check_done('binran',msg='')
end subroutine test_binran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_caucdf()
implicit none
   call unit_check_start('caucdf',msg='')
   !!call unit_check('caucdf', 0.eq.0, 'checking',100)
   call unit_check_done('caucdf',msg='')
end subroutine test_caucdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_caupdf()
implicit none
   call unit_check_start('caupdf',msg='')
   !!call unit_check('caupdf', 0.eq.0, 'checking',100)
   call unit_check_done('caupdf',msg='')
end subroutine test_caupdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_cauplt()
implicit none
   call unit_check_start('cauplt',msg='')
   !!call unit_check('cauplt', 0.eq.0, 'checking',100)
   call unit_check_done('cauplt',msg='')
end subroutine test_cauplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_cauppf()
implicit none
   call unit_check_start('cauppf',msg='')
   !!call unit_check('cauppf', 0.eq.0, 'checking',100)
   call unit_check_done('cauppf',msg='')
end subroutine test_cauppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_cauran()
implicit none
   call unit_check_start('cauran',msg='')
   !!call unit_check('cauran', 0.eq.0, 'checking',100)
   call unit_check_done('cauran',msg='')
end subroutine test_cauran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_causf()
implicit none
   call unit_check_start('causf',msg='')
   !!call unit_check('causf', 0.eq.0, 'checking',100)
   call unit_check_done('causf',msg='')
end subroutine test_causf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_chscdf()
implicit none
   call unit_check_start('chscdf',msg='')
   !!call unit_check('chscdf', 0.eq.0, 'checking',100)
   call unit_check_done('chscdf',msg='')
end subroutine test_chscdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_chsplt()
implicit none
   call unit_check_start('chsplt',msg='')
   !!call unit_check('chsplt', 0.eq.0, 'checking',100)
   call unit_check_done('chsplt',msg='')
end subroutine test_chsplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_chsppf()
implicit none
   call unit_check_start('chsppf',msg='')
   !!call unit_check('chsppf', 0.eq.0, 'checking',100)
   call unit_check_done('chsppf',msg='')
end subroutine test_chsppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_chsran()
implicit none
   call unit_check_start('chsran',msg='')
   !!call unit_check('chsran', 0.eq.0, 'checking',100)
   call unit_check_done('chsran',msg='')
end subroutine test_chsran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_code()
implicit none
   call unit_check_start('code',msg='')
   !!call unit_check('code', 0.eq.0, 'checking',100)
   call unit_check_done('code',msg='')
end subroutine test_code
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_copy()
implicit none
   call unit_check_start('copy',msg='')
   !!call unit_check('copy', 0.eq.0, 'checking',100)
   call unit_check_done('copy',msg='')
end subroutine test_copy
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_corr()
implicit none
   call unit_check_start('corr',msg='')
   !!call unit_check('corr', 0.eq.0, 'checking',100)
   call unit_check_done('corr',msg='')
end subroutine test_corr
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_count()
implicit none
   call unit_check_start('count',msg='')
   !!call unit_check('count', 0.eq.0, 'checking',100)
   call unit_check_done('count',msg='')
end subroutine test_count
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_decomp()
implicit none
   call unit_check_start('decomp',msg='')
   !!call unit_check('decomp', 0.eq.0, 'checking',100)
   call unit_check_done('decomp',msg='')
end subroutine test_decomp
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_define()
implicit none
   call unit_check_start('define',msg='')
   !!call unit_check('define', 0.eq.0, 'checking',100)
   call unit_check_done('define',msg='')
end subroutine test_define
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_delete()
implicit none
   call unit_check_start('delete',msg='')
   !!call unit_check('delete', 0.eq.0, 'checking',100)
   call unit_check_done('delete',msg='')
end subroutine test_delete
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_demod()
implicit none
   call unit_check_start('demod',msg='')
   !!call unit_check('demod', 0.eq.0, 'checking',100)
   call unit_check_done('demod',msg='')
end subroutine test_demod
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_dexcdf()
implicit none
   call unit_check_start('dexcdf',msg='')
   !!call unit_check('dexcdf', 0.eq.0, 'checking',100)
   call unit_check_done('dexcdf',msg='')
end subroutine test_dexcdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_dexpdf()
implicit none
   call unit_check_start('dexpdf',msg='')
   !!call unit_check('dexpdf', 0.eq.0, 'checking',100)
   call unit_check_done('dexpdf',msg='')
end subroutine test_dexpdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_dexplt()
implicit none
   call unit_check_start('dexplt',msg='')
   !!call unit_check('dexplt', 0.eq.0, 'checking',100)
   call unit_check_done('dexplt',msg='')
end subroutine test_dexplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_dexppf()
implicit none
   call unit_check_start('dexppf',msg='')
   !!call unit_check('dexppf', 0.eq.0, 'checking',100)
   call unit_check_done('dexppf',msg='')
end subroutine test_dexppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_dexran()
implicit none
   call unit_check_start('dexran',msg='')
   !!call unit_check('dexran', 0.eq.0, 'checking',100)
   call unit_check_done('dexran',msg='')
end subroutine test_dexran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_dexsf()
implicit none
   call unit_check_start('dexsf',msg='')
   !!call unit_check('dexsf', 0.eq.0, 'checking',100)
   call unit_check_done('dexsf',msg='')
end subroutine test_dexsf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_discr2()
implicit none
   call unit_check_start('discr2',msg='')
   !!call unit_check('discr2', 0.eq.0, 'checking',100)
   call unit_check_done('discr2',msg='')
end subroutine test_discr2
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_discr3()
implicit none
   call unit_check_start('discr3',msg='')
   !!call unit_check('discr3', 0.eq.0, 'checking',100)
   call unit_check_done('discr3',msg='')
end subroutine test_discr3
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_discre()
implicit none
   call unit_check_start('discre',msg='')
   !!call unit_check('discre', 0.eq.0, 'checking',100)
   call unit_check_done('discre',msg='')
end subroutine test_discre
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_dot()
implicit none
   call unit_check_start('dot',msg='')
   !!call unit_check('dot', 0.eq.0, 'checking',100)
   call unit_check_done('dot',msg='')
end subroutine test_dot
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_ev1cdf()
implicit none
   call unit_check_start('ev1cdf',msg='')
   !!call unit_check('ev1cdf', 0.eq.0, 'checking',100)
   call unit_check_done('ev1cdf',msg='')
end subroutine test_ev1cdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_ev1plt()
implicit none
   call unit_check_start('ev1plt',msg='')
   !!call unit_check('ev1plt', 0.eq.0, 'checking',100)
   call unit_check_done('ev1plt',msg='')
end subroutine test_ev1plt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_ev1ppf()
implicit none
   call unit_check_start('ev1ppf',msg='')
   !!call unit_check('ev1ppf', 0.eq.0, 'checking',100)
   call unit_check_done('ev1ppf',msg='')
end subroutine test_ev1ppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_ev1ran()
implicit none
   call unit_check_start('ev1ran',msg='')
   !!call unit_check('ev1ran', 0.eq.0, 'checking',100)
   call unit_check_done('ev1ran',msg='')
end subroutine test_ev1ran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_ev2cdf()
implicit none
   call unit_check_start('ev2cdf',msg='')
   !!call unit_check('ev2cdf', 0.eq.0, 'checking',100)
   call unit_check_done('ev2cdf',msg='')
end subroutine test_ev2cdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_ev2plt()
implicit none
   call unit_check_start('ev2plt',msg='')
   !!call unit_check('ev2plt', 0.eq.0, 'checking',100)
   call unit_check_done('ev2plt',msg='')
end subroutine test_ev2plt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_ev2ppf()
implicit none
   call unit_check_start('ev2ppf',msg='')
   !!call unit_check('ev2ppf', 0.eq.0, 'checking',100)
   call unit_check_done('ev2ppf',msg='')
end subroutine test_ev2ppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_ev2ran()
implicit none
   call unit_check_start('ev2ran',msg='')
   !!call unit_check('ev2ran', 0.eq.0, 'checking',100)
   call unit_check_done('ev2ran',msg='')
end subroutine test_ev2ran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_expcdf()
implicit none
   call unit_check_start('expcdf',msg='')
   !!call unit_check('expcdf', 0.eq.0, 'checking',100)
   call unit_check_done('expcdf',msg='')
end subroutine test_expcdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_exppdf()
implicit none
   call unit_check_start('exppdf',msg='')
   !!call unit_check('exppdf', 0.eq.0, 'checking',100)
   call unit_check_done('exppdf',msg='')
end subroutine test_exppdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_expplt()
implicit none
   call unit_check_start('expplt',msg='')
   !!call unit_check('expplt', 0.eq.0, 'checking',100)
   call unit_check_done('expplt',msg='')
end subroutine test_expplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_expppf()
implicit none
   call unit_check_start('expppf',msg='')
   !!call unit_check('expppf', 0.eq.0, 'checking',100)
   call unit_check_done('expppf',msg='')
end subroutine test_expppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_expran()
implicit none
   call unit_check_start('expran',msg='')
   !!call unit_check('expran', 0.eq.0, 'checking',100)
   call unit_check_done('expran',msg='')
end subroutine test_expran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_expsf()
implicit none
   call unit_check_start('expsf',msg='')
   !!call unit_check('expsf', 0.eq.0, 'checking',100)
   call unit_check_done('expsf',msg='')
end subroutine test_expsf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_extrem()
implicit none
   call unit_check_start('extrem',msg='')
   !!call unit_check('extrem', 0.eq.0, 'checking',100)
   call unit_check_done('extrem',msg='')
end subroutine test_extrem
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_fcdf()
implicit none
   call unit_check_start('fcdf',msg='')
   !!call unit_check('fcdf', 0.eq.0, 'checking',100)
   call unit_check_done('fcdf',msg='')
end subroutine test_fcdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_fourie()
implicit none
   call unit_check_start('fourie',msg='')
   !!call unit_check('fourie', 0.eq.0, 'checking',100)
   call unit_check_done('fourie',msg='')
end subroutine test_fourie
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_fran()
implicit none
   call unit_check_start('fran',msg='')
   !!call unit_check('fran', 0.eq.0, 'checking',100)
   call unit_check_done('fran',msg='')
end subroutine test_fran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_freq()
implicit none
   call unit_check_start('freq',msg='')
   !!call unit_check('freq', 0.eq.0, 'checking',100)
   call unit_check_done('freq',msg='')
end subroutine test_freq
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_gamcdf()
implicit none
   call unit_check_start('gamcdf',msg='')
   !!call unit_check('gamcdf', 0.eq.0, 'checking',100)
   call unit_check_done('gamcdf',msg='')
end subroutine test_gamcdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_gamplt()
implicit none
   call unit_check_start('gamplt',msg='')
   !!call unit_check('gamplt', 0.eq.0, 'checking',100)
   call unit_check_done('gamplt',msg='')
end subroutine test_gamplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_gamppf()
implicit none
   call unit_check_start('gamppf',msg='')
   !!call unit_check('gamppf', 0.eq.0, 'checking',100)
   call unit_check_done('gamppf',msg='')
end subroutine test_gamppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_gamran()
implicit none
   call unit_check_start('gamran',msg='')
   !!call unit_check('gamran', 0.eq.0, 'checking',100)
   call unit_check_done('gamran',msg='')
end subroutine test_gamran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_geocdf()
implicit none
   call unit_check_start('geocdf',msg='')
   !!call unit_check('geocdf', 0.eq.0, 'checking',100)
   call unit_check_done('geocdf',msg='')
end subroutine test_geocdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_geoplt()
implicit none
   call unit_check_start('geoplt',msg='')
   !!call unit_check('geoplt', 0.eq.0, 'checking',100)
   call unit_check_done('geoplt',msg='')
end subroutine test_geoplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_geoppf()
implicit none
   call unit_check_start('geoppf',msg='')
   !!call unit_check('geoppf', 0.eq.0, 'checking',100)
   call unit_check_done('geoppf',msg='')
end subroutine test_geoppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_georan()
implicit none
   call unit_check_start('georan',msg='')
   !!call unit_check('georan', 0.eq.0, 'checking',100)
   call unit_check_done('georan',msg='')
end subroutine test_georan
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_hfncdf()
implicit none
   call unit_check_start('hfncdf',msg='')
   !!call unit_check('hfncdf', 0.eq.0, 'checking',100)
   call unit_check_done('hfncdf',msg='')
end subroutine test_hfncdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_hfnplt()
implicit none
   call unit_check_start('hfnplt',msg='')
   !!call unit_check('hfnplt', 0.eq.0, 'checking',100)
   call unit_check_done('hfnplt',msg='')
end subroutine test_hfnplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_hfnppf()
implicit none
   call unit_check_start('hfnppf',msg='')
   !!call unit_check('hfnppf', 0.eq.0, 'checking',100)
   call unit_check_done('hfnppf',msg='')
end subroutine test_hfnppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_hfnran()
implicit none
   call unit_check_start('hfnran',msg='')
   !!call unit_check('hfnran', 0.eq.0, 'checking',100)
   call unit_check_done('hfnran',msg='')
end subroutine test_hfnran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_hist()
implicit none
   call unit_check_start('hist',msg='')
   !!call unit_check('hist', 0.eq.0, 'checking',100)
   call unit_check_done('hist',msg='')
end subroutine test_hist
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_invxwx()
implicit none
   call unit_check_start('invxwx',msg='')
   !!call unit_check('invxwx', 0.eq.0, 'checking',100)
   call unit_check_done('invxwx',msg='')
end subroutine test_invxwx
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_lamcdf()
implicit none
   call unit_check_start('lamcdf',msg='')
   !!call unit_check('lamcdf', 0.eq.0, 'checking',100)
   call unit_check_done('lamcdf',msg='')
end subroutine test_lamcdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_lampdf()
implicit none
   call unit_check_start('lampdf',msg='')
   !!call unit_check('lampdf', 0.eq.0, 'checking',100)
   call unit_check_done('lampdf',msg='')
end subroutine test_lampdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_lamplt()
implicit none
   call unit_check_start('lamplt',msg='')
   !!call unit_check('lamplt', 0.eq.0, 'checking',100)
   call unit_check_done('lamplt',msg='')
end subroutine test_lamplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_lamppf()
implicit none
   call unit_check_start('lamppf',msg='')
   !!call unit_check('lamppf', 0.eq.0, 'checking',100)
   call unit_check_done('lamppf',msg='')
end subroutine test_lamppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_lamran()
implicit none
   call unit_check_start('lamran',msg='')
   !!call unit_check('lamran', 0.eq.0, 'checking',100)
   call unit_check_done('lamran',msg='')
end subroutine test_lamran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_lamsf()
implicit none
   call unit_check_start('lamsf',msg='')
   !!call unit_check('lamsf', 0.eq.0, 'checking',100)
   call unit_check_done('lamsf',msg='')
end subroutine test_lamsf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_lgncdf()
implicit none
   call unit_check_start('lgncdf',msg='')
   !!call unit_check('lgncdf', 0.eq.0, 'checking',100)
   call unit_check_done('lgncdf',msg='')
end subroutine test_lgncdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_lgnplt()
implicit none
   call unit_check_start('lgnplt',msg='')
   !!call unit_check('lgnplt', 0.eq.0, 'checking',100)
   call unit_check_done('lgnplt',msg='')
end subroutine test_lgnplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_lgnppf()
implicit none
   call unit_check_start('lgnppf',msg='')
   !!call unit_check('lgnppf', 0.eq.0, 'checking',100)
   call unit_check_done('lgnppf',msg='')
end subroutine test_lgnppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_lgnran()
implicit none
   call unit_check_start('lgnran',msg='')
   !!call unit_check('lgnran', 0.eq.0, 'checking',100)
   call unit_check_done('lgnran',msg='')
end subroutine test_lgnran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_loc()
implicit none
   call unit_check_start('loc',msg='')
   !!call unit_check('loc', 0.eq.0, 'checking',100)
   call unit_check_done('loc',msg='')
end subroutine test_loc
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_logcdf()
implicit none
   call unit_check_start('logcdf',msg='')
   !!call unit_check('logcdf', 0.eq.0, 'checking',100)
   call unit_check_done('logcdf',msg='')
end subroutine test_logcdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_logpdf()
implicit none
   call unit_check_start('logpdf',msg='')
   !!call unit_check('logpdf', 0.eq.0, 'checking',100)
   call unit_check_done('logpdf',msg='')
end subroutine test_logpdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_logplt()
implicit none
   call unit_check_start('logplt',msg='')
   !!call unit_check('logplt', 0.eq.0, 'checking',100)
   call unit_check_done('logplt',msg='')
end subroutine test_logplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_logppf()
implicit none
   call unit_check_start('logppf',msg='')
   !!call unit_check('logppf', 0.eq.0, 'checking',100)
   call unit_check_done('logppf',msg='')
end subroutine test_logppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_logran()
implicit none
   call unit_check_start('logran',msg='')
   !!call unit_check('logran', 0.eq.0, 'checking',100)
   call unit_check_done('logran',msg='')
end subroutine test_logran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_logsf()
implicit none
   call unit_check_start('logsf',msg='')
   !!call unit_check('logsf', 0.eq.0, 'checking',100)
   call unit_check_done('logsf',msg='')
end subroutine test_logsf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_max()
implicit none
   call unit_check_start('max',msg='')
   !!call unit_check('max', 0.eq.0, 'checking',100)
   call unit_check_done('max',msg='')
end subroutine test_max
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_mean()
implicit none
   call unit_check_start('mean',msg='')
   !!call unit_check('mean', 0.eq.0, 'checking',100)
   call unit_check_done('mean',msg='')
end subroutine test_mean
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_median()
implicit none
   call unit_check_start('median',msg='')
   !!call unit_check('median', 0.eq.0, 'checking',100)
   call unit_check_done('median',msg='')
end subroutine test_median
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_midm()
implicit none
   call unit_check_start('midm',msg='')
   !!call unit_check('midm', 0.eq.0, 'checking',100)
   call unit_check_done('midm',msg='')
end subroutine test_midm
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_midr()
implicit none
   call unit_check_start('midr',msg='')
   !!call unit_check('midr', 0.eq.0, 'checking',100)
   call unit_check_done('midr',msg='')
end subroutine test_midr
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_min()
implicit none
   call unit_check_start('min',msg='')
   !!call unit_check('min', 0.eq.0, 'checking',100)
   call unit_check_done('min',msg='')
end subroutine test_min
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_move()
implicit none
   call unit_check_start('move',msg='')
   !!call unit_check('move', 0.eq.0, 'checking',100)
   call unit_check_done('move',msg='')
end subroutine test_move
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_nbcdf()
implicit none
   call unit_check_start('nbcdf',msg='')
   !!call unit_check('nbcdf', 0.eq.0, 'checking',100)
   call unit_check_done('nbcdf',msg='')
end subroutine test_nbcdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_nbppf()
implicit none
   call unit_check_start('nbppf',msg='')
   !!call unit_check('nbppf', 0.eq.0, 'checking',100)
   call unit_check_done('nbppf',msg='')
end subroutine test_nbppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_nbran()
implicit none
   call unit_check_start('nbran',msg='')
   !!call unit_check('nbran', 0.eq.0, 'checking',100)
   call unit_check_done('nbran',msg='')
end subroutine test_nbran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_norcdf()
implicit none
   call unit_check_start('norcdf',msg='')
   !!call unit_check('norcdf', 0.eq.0, 'checking',100)
   call unit_check_done('norcdf',msg='')
end subroutine test_norcdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_norout()
implicit none
   call unit_check_start('norout',msg='')
   !!call unit_check('norout', 0.eq.0, 'checking',100)
   call unit_check_done('norout',msg='')
end subroutine test_norout
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_norpdf()
implicit none
   call unit_check_start('norpdf',msg='')
   !!call unit_check('norpdf', 0.eq.0, 'checking',100)
   call unit_check_done('norpdf',msg='')
end subroutine test_norpdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_norplt()
implicit none
   call unit_check_start('norplt',msg='')
   !!call unit_check('norplt', 0.eq.0, 'checking',100)
   call unit_check_done('norplt',msg='')
end subroutine test_norplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_norppf()
implicit none
   call unit_check_start('norppf',msg='')
   !!call unit_check('norppf', 0.eq.0, 'checking',100)
   call unit_check_done('norppf',msg='')
end subroutine test_norppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_norran()
implicit none
   call unit_check_start('norran',msg='')
   !!call unit_check('norran', 0.eq.0, 'checking',100)
   call unit_check_done('norran',msg='')
end subroutine test_norran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_norsf()
implicit none
   call unit_check_start('norsf',msg='')
   !!call unit_check('norsf', 0.eq.0, 'checking',100)
   call unit_check_done('norsf',msg='')
end subroutine test_norsf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_parcdf()
implicit none
   call unit_check_start('parcdf',msg='')
   !!call unit_check('parcdf', 0.eq.0, 'checking',100)
   call unit_check_done('parcdf',msg='')
end subroutine test_parcdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_parplt()
implicit none
   call unit_check_start('parplt',msg='')
   !!call unit_check('parplt', 0.eq.0, 'checking',100)
   call unit_check_done('parplt',msg='')
end subroutine test_parplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_parppf()
implicit none
   call unit_check_start('parppf',msg='')
   !!call unit_check('parppf', 0.eq.0, 'checking',100)
   call unit_check_done('parppf',msg='')
end subroutine test_parppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_parran()
implicit none
   call unit_check_start('parran',msg='')
   !!call unit_check('parran', 0.eq.0, 'checking',100)
   call unit_check_done('parran',msg='')
end subroutine test_parran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plot()
implicit none
   call unit_check_start('plot',msg='')
   !!call unit_check('plot', 0.eq.0, 'checking',100)
   call unit_check_done('plot',msg='')
end subroutine test_plot
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plot10()
implicit none
   call unit_check_start('plot10',msg='')
   !!call unit_check('plot10', 0.eq.0, 'checking',100)
   call unit_check_done('plot10',msg='')
end subroutine test_plot10
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plot6()
implicit none
   call unit_check_start('plot6',msg='')
   !!call unit_check('plot6', 0.eq.0, 'checking',100)
   call unit_check_done('plot6',msg='')
end subroutine test_plot6
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plot7()
implicit none
   call unit_check_start('plot7',msg='')
   !!call unit_check('plot7', 0.eq.0, 'checking',100)
   call unit_check_done('plot7',msg='')
end subroutine test_plot7
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plot8()
implicit none
   call unit_check_start('plot8',msg='')
   !!call unit_check('plot8', 0.eq.0, 'checking',100)
   call unit_check_done('plot8',msg='')
end subroutine test_plot8
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plot9()
implicit none
   call unit_check_start('plot9',msg='')
   !!call unit_check('plot9', 0.eq.0, 'checking',100)
   call unit_check_done('plot9',msg='')
end subroutine test_plot9
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plotc()
implicit none
   call unit_check_start('plotc',msg='')
   !!call unit_check('plotc', 0.eq.0, 'checking',100)
   call unit_check_done('plotc',msg='')
end subroutine test_plotc
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plotco()
implicit none
   call unit_check_start('plotco',msg='')
   !!call unit_check('plotco', 0.eq.0, 'checking',100)
   call unit_check_done('plotco',msg='')
end subroutine test_plotco
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plotct()
implicit none
   call unit_check_start('plotct',msg='')
   !!call unit_check('plotct', 0.eq.0, 'checking',100)
   call unit_check_done('plotct',msg='')
end subroutine test_plotct
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plots()
implicit none
   call unit_check_start('plots',msg='')
   !!call unit_check('plots', 0.eq.0, 'checking',100)
   call unit_check_done('plots',msg='')
end subroutine test_plots
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plotsc()
implicit none
   call unit_check_start('plotsc',msg='')
   !!call unit_check('plotsc', 0.eq.0, 'checking',100)
   call unit_check_done('plotsc',msg='')
end subroutine test_plotsc
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plotsp()
implicit none
   call unit_check_start('plotsp',msg='')
   !!call unit_check('plotsp', 0.eq.0, 'checking',100)
   call unit_check_done('plotsp',msg='')
end subroutine test_plotsp
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plotst()
implicit none
   call unit_check_start('plotst',msg='')
   !!call unit_check('plotst', 0.eq.0, 'checking',100)
   call unit_check_done('plotst',msg='')
end subroutine test_plotst
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plott()
implicit none
   call unit_check_start('plott',msg='')
   !!call unit_check('plott', 0.eq.0, 'checking',100)
   call unit_check_done('plott',msg='')
end subroutine test_plott
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plotu()
implicit none
   call unit_check_start('plotu',msg='')
   !!call unit_check('plotu', 0.eq.0, 'checking',100)
   call unit_check_done('plotu',msg='')
end subroutine test_plotu
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plotx()
implicit none
   call unit_check_start('plotx',msg='')
   !!call unit_check('plotx', 0.eq.0, 'checking',100)
   call unit_check_done('plotx',msg='')
end subroutine test_plotx
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plotxt()
implicit none
   call unit_check_start('plotxt',msg='')
   !!call unit_check('plotxt', 0.eq.0, 'checking',100)
   call unit_check_done('plotxt',msg='')
end subroutine test_plotxt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_plotxx()
implicit none
   call unit_check_start('plotxx',msg='')
   !!call unit_check('plotxx', 0.eq.0, 'checking',100)
   call unit_check_done('plotxx',msg='')
end subroutine test_plotxx
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_pltsct()
implicit none
   call unit_check_start('pltsct',msg='')
   !!call unit_check('pltsct', 0.eq.0, 'checking',100)
   call unit_check_done('pltsct',msg='')
end subroutine test_pltsct
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_pltxxt()
implicit none
   call unit_check_start('pltxxt',msg='')
   !!call unit_check('pltxxt', 0.eq.0, 'checking',100)
   call unit_check_done('pltxxt',msg='')
end subroutine test_pltxxt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_poicdf()
implicit none
   call unit_check_start('poicdf',msg='')
   !!call unit_check('poicdf', 0.eq.0, 'checking',100)
   call unit_check_done('poicdf',msg='')
end subroutine test_poicdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_poiplt()
implicit none
   call unit_check_start('poiplt',msg='')
   !!call unit_check('poiplt', 0.eq.0, 'checking',100)
   call unit_check_done('poiplt',msg='')
end subroutine test_poiplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_poippf()
implicit none
   call unit_check_start('poippf',msg='')
   !!call unit_check('poippf', 0.eq.0, 'checking',100)
   call unit_check_done('poippf',msg='')
end subroutine test_poippf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_poiran()
implicit none
   call unit_check_start('poiran',msg='')
   !!call unit_check('poiran', 0.eq.0, 'checking',100)
   call unit_check_done('poiran',msg='')
end subroutine test_poiran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_poly()
implicit none
   call unit_check_start('poly',msg='')
   !!call unit_check('poly', 0.eq.0, 'checking',100)
   call unit_check_done('poly',msg='')
end subroutine test_poly
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_propor()
implicit none
   call unit_check_start('propor',msg='')
   !!call unit_check('propor', 0.eq.0, 'checking',100)
   call unit_check_done('propor',msg='')
end subroutine test_propor
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_range()
implicit none
   call unit_check_start('range',msg='')
   !!call unit_check('range', 0.eq.0, 'checking',100)
   call unit_check_done('range',msg='')
end subroutine test_range
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_rank()
implicit none
   call unit_check_start('rank',msg='')
   !!call unit_check('rank', 0.eq.0, 'checking',100)
   call unit_check_done('rank',msg='')
end subroutine test_rank
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_ranper()
implicit none
   call unit_check_start('ranper',msg='')
   !!call unit_check('ranper', 0.eq.0, 'checking',100)
   call unit_check_done('ranper',msg='')
end subroutine test_ranper
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_read()
implicit none
   call unit_check_start('read',msg='')
   !!call unit_check('read', 0.eq.0, 'checking',100)
   call unit_check_done('read',msg='')
end subroutine test_read
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_readg()
implicit none
   call unit_check_start('readg',msg='')
   !!call unit_check('readg', 0.eq.0, 'checking',100)
   call unit_check_done('readg',msg='')
end subroutine test_readg
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_relsd()
implicit none
   call unit_check_start('relsd',msg='')
   !!call unit_check('relsd', 0.eq.0, 'checking',100)
   call unit_check_done('relsd',msg='')
end subroutine test_relsd
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_replac()
implicit none
   call unit_check_start('replac',msg='')
   !!call unit_check('replac', 0.eq.0, 'checking',100)
   call unit_check_done('replac',msg='')
end subroutine test_replac
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_retain()
implicit none
   call unit_check_start('retain',msg='')
   !!call unit_check('retain', 0.eq.0, 'checking',100)
   call unit_check_done('retain',msg='')
end subroutine test_retain
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_runs()
implicit none
   call unit_check_start('runs',msg='')
   !!call unit_check('runs', 0.eq.0, 'checking',100)
   call unit_check_done('runs',msg='')
end subroutine test_runs
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_sampp()
implicit none
   call unit_check_start('sampp',msg='')
   !!call unit_check('sampp', 0.eq.0, 'checking',100)
   call unit_check_done('sampp',msg='')
end subroutine test_sampp
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_scale()
implicit none
   call unit_check_start('scale',msg='')
   !!call unit_check('scale', 0.eq.0, 'checking',100)
   call unit_check_done('scale',msg='')
end subroutine test_scale
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_sd()
implicit none
   call unit_check_start('sd',msg='')
   !!call unit_check('sd', 0.eq.0, 'checking',100)
   call unit_check_done('sd',msg='')
end subroutine test_sd
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_skipr()
implicit none
   call unit_check_start('skipr',msg='')
   !!call unit_check('skipr', 0.eq.0, 'checking',100)
   call unit_check_done('skipr',msg='')
end subroutine test_skipr
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_sort()
implicit none
   call unit_check_start('sort',msg='')
   !!call unit_check('sort', 0.eq.0, 'checking',100)
   call unit_check_done('sort',msg='')
end subroutine test_sort
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_sortc()
implicit none
   call unit_check_start('sortc',msg='')
   !!call unit_check('sortc', 0.eq.0, 'checking',100)
   call unit_check_done('sortc',msg='')
end subroutine test_sortc
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_sortp()
implicit none
   call unit_check_start('sortp',msg='')
   !!call unit_check('sortp', 0.eq.0, 'checking',100)
   call unit_check_done('sortp',msg='')
end subroutine test_sortp
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_spcorr()
implicit none
   call unit_check_start('spcorr',msg='')
   !!call unit_check('spcorr', 0.eq.0, 'checking',100)
   call unit_check_done('spcorr',msg='')
end subroutine test_spcorr
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_stmom3()
implicit none
   call unit_check_start('stmom3',msg='')
   !!call unit_check('stmom3', 0.eq.0, 'checking',100)
   call unit_check_done('stmom3',msg='')
end subroutine test_stmom3
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_stmom4()
implicit none
   call unit_check_start('stmom4',msg='')
   !!call unit_check('stmom4', 0.eq.0, 'checking',100)
   call unit_check_done('stmom4',msg='')
end subroutine test_stmom4
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_subse1()
implicit none
   call unit_check_start('subse1',msg='')
   !!call unit_check('subse1', 0.eq.0, 'checking',100)
   call unit_check_done('subse1',msg='')
end subroutine test_subse1
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_subse2()
implicit none
   call unit_check_start('subse2',msg='')
   !!call unit_check('subse2', 0.eq.0, 'checking',100)
   call unit_check_done('subse2',msg='')
end subroutine test_subse2
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_subset()
implicit none
   call unit_check_start('subset',msg='')
   !!call unit_check('subset', 0.eq.0, 'checking',100)
   call unit_check_done('subset',msg='')
end subroutine test_subset
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_tail()
implicit none
   call unit_check_start('tail',msg='')
   !!call unit_check('tail', 0.eq.0, 'checking',100)
   call unit_check_done('tail',msg='')
end subroutine test_tail
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_tcdf()
implicit none
   call unit_check_start('tcdf',msg='')
   !!call unit_check('tcdf', 0.eq.0, 'checking',100)
   call unit_check_done('tcdf',msg='')
end subroutine test_tcdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_time()
implicit none
   call unit_check_start('time',msg='')
   !!call unit_check('time', 0.eq.0, 'checking',100)
   call unit_check_done('time',msg='')
end subroutine test_time
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_tol()
implicit none
   call unit_check_start('tol',msg='')
   !!call unit_check('tol', 0.eq.0, 'checking',100)
   call unit_check_done('tol',msg='')
end subroutine test_tol
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_tplt()
implicit none
   call unit_check_start('tplt',msg='')
   !!call unit_check('tplt', 0.eq.0, 'checking',100)
   call unit_check_done('tplt',msg='')
end subroutine test_tplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_tppf()
implicit none
   call unit_check_start('tppf',msg='')
   !!call unit_check('tppf', 0.eq.0, 'checking',100)
   call unit_check_done('tppf',msg='')
end subroutine test_tppf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_tran()
implicit none
   call unit_check_start('tran',msg='')
   !!call unit_check('tran', 0.eq.0, 'checking',100)
   call unit_check_done('tran',msg='')
end subroutine test_tran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_trim()
implicit none
   call unit_check_start('trim',msg='')
   !!call unit_check('trim', 0.eq.0, 'checking',100)
   call unit_check_done('trim',msg='')
end subroutine test_trim
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_unicdf()
implicit none
   call unit_check_start('unicdf',msg='')
   !!call unit_check('unicdf', 0.eq.0, 'checking',100)
   call unit_check_done('unicdf',msg='')
end subroutine test_unicdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_unimed()
implicit none
   call unit_check_start('unimed',msg='')
   !!call unit_check('unimed', 0.eq.0, 'checking',100)
   call unit_check_done('unimed',msg='')
end subroutine test_unimed
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_unipdf()
implicit none
   call unit_check_start('unipdf',msg='')
   !!call unit_check('unipdf', 0.eq.0, 'checking',100)
   call unit_check_done('unipdf',msg='')
end subroutine test_unipdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_uniplt()
implicit none
   call unit_check_start('uniplt',msg='')
   !!call unit_check('uniplt', 0.eq.0, 'checking',100)
   call unit_check_done('uniplt',msg='')
end subroutine test_uniplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_unippf()
implicit none
   call unit_check_start('unippf',msg='')
   !!call unit_check('unippf', 0.eq.0, 'checking',100)
   call unit_check_done('unippf',msg='')
end subroutine test_unippf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_uniran()
implicit none
   call unit_check_start('uniran',msg='')
   !!call unit_check('uniran', 0.eq.0, 'checking',100)
   call unit_check_done('uniran',msg='')
end subroutine test_uniran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_unisf()
implicit none
   call unit_check_start('unisf',msg='')
   !!call unit_check('unisf', 0.eq.0, 'checking',100)
   call unit_check_done('unisf',msg='')
end subroutine test_unisf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_var()
implicit none
   call unit_check_start('var',msg='')
   !!call unit_check('var', 0.eq.0, 'checking',100)
   call unit_check_done('var',msg='')
end subroutine test_var
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_weib()
implicit none
   call unit_check_start('weib',msg='')
   !!call unit_check('weib', 0.eq.0, 'checking',100)
   call unit_check_done('weib',msg='')
end subroutine test_weib
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_weicdf()
implicit none
   call unit_check_start('weicdf',msg='')
   !!call unit_check('weicdf', 0.eq.0, 'checking',100)
   call unit_check_done('weicdf',msg='')
end subroutine test_weicdf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_weiplt()
implicit none
   call unit_check_start('weiplt',msg='')
   !!call unit_check('weiplt', 0.eq.0, 'checking',100)
   call unit_check_done('weiplt',msg='')
end subroutine test_weiplt
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_weippf()
implicit none
   call unit_check_start('weippf',msg='')
   !!call unit_check('weippf', 0.eq.0, 'checking',100)
   call unit_check_done('weippf',msg='')
end subroutine test_weippf
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_weiran()
implicit none
   call unit_check_start('weiran',msg='')
   !!call unit_check('weiran', 0.eq.0, 'checking',100)
   call unit_check_done('weiran',msg='')
end subroutine test_weiran
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_wind()
implicit none
   call unit_check_start('wind',msg='')
   !!call unit_check('wind', 0.eq.0, 'checking',100)
   call unit_check_done('wind',msg='')
end subroutine test_wind
!TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
subroutine test_write()
implicit none
   call unit_check_start('write',msg='')
   !!call unit_check('write', 0.eq.0, 'checking',100)
   call unit_check_done('write',msg='')
end subroutine test_write
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()=
!===================================================================================================================================
end program test_suite_M_datapac
