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
    work_m_13098322883000470980_3037777339_init();
    work_m_16609187240047990218_0273213086_init();
    work_m_01635279591231097115_2248000679_init();
    xilinxcorelib_ver_m_04284627112054182733_1549027279_init();
    xilinxcorelib_ver_m_18166792875774041790_0135474683_init();
    xilinxcorelib_ver_m_17738287534884592592_1969072951_init();
    xilinxcorelib_ver_m_10066368518302646626_3219390935_init();
    work_m_05240187959938530918_1813639988_init();
    work_m_09642017571994245184_2239952842_init();
    work_m_16023646304912171336_0254784918_init();
    work_m_02988832564607993760_0399570486_init();
    work_m_02988832564607993760_3189980446_init();
    work_m_01635279591231097115_4033830893_init();
    work_m_01635279591231097115_0627517463_init();
    work_m_01935554036741885960_0365340686_init();
    work_m_17808886098820286102_0006689393_init();
    work_m_00489478692895212124_3366014769_init();
    work_m_14443659927426786236_3541318589_init();
    work_m_09642017571994245184_3573809201_init();
    work_m_14562799346671179117_3167974792_init();
    work_m_00011907725856344745_2213184118_init();
    xilinxcorelib_ver_m_04284627112054182733_2852462055_init();
    xilinxcorelib_ver_m_04284627112054182733_0367428356_init();
    xilinxcorelib_ver_m_18166792875774041790_2843080771_init();
    xilinxcorelib_ver_m_17738287534884592592_0259475020_init();
    xilinxcorelib_ver_m_10066368518302646626_2756320781_init();
    work_m_10431123694831851113_2448737859_init();
    work_m_16609187240047990218_1573045023_init();
    work_m_09642017571994245184_3790484174_init();
    work_m_15922938988774882660_4085691960_init();
    work_m_17202385434966972783_2672093449_init();
    work_m_05261840960763053170_3996914202_init();
    work_m_16077455761305713569_3483585387_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_16077455761305713569_3483585387");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
