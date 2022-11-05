/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    xilinxcorelib_ver_m_04284627112054182733_0718682217_init();
    xilinxcorelib_ver_m_04284627112054182733_2503321226_init();
    xilinxcorelib_ver_m_18166792875774041790_1486898983_init();
    xilinxcorelib_ver_m_17738287534884592592_2439476303_init();
    xilinxcorelib_ver_m_10066368518302646626_4006127180_init();
    work_m_10431123694831851113_2448737859_init();
    work_m_10359809166375369995_3279672427_init();
    work_m_04409058763591757424_1247338255_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_04409058763591757424_1247338255");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
