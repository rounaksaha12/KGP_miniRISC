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
    work_m_16609187240047990218_0273213086_init();
    work_m_01935554036741885960_0365340686_init();
    xilinxcorelib_ver_m_04284627112054182733_1549027279_init();
    xilinxcorelib_ver_m_18166792875774041790_0135474683_init();
    xilinxcorelib_ver_m_17738287534884592592_1969072951_init();
    xilinxcorelib_ver_m_10066368518302646626_3219390935_init();
    work_m_05240187959938530918_1813639988_init();
    work_m_02802758701614375017_3979461627_init();
    work_m_05362774355165267696_3381403922_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_05362774355165267696_3381403922");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
