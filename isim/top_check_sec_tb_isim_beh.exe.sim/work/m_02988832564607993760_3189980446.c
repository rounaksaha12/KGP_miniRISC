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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/SIGN_EXTND.v";



static void Cont_25_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 2496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1184U);
    t4 = *((char **)t2);
    xsi_vlogtype_sign_extend(t3, 32, t4, 21);
    t2 = (t0 + 2896);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 8);
    xsi_driver_vfirst_trans(t2, 0, 31);
    t9 = (t0 + 2816);
    *((int *)t9) = 1;

LAB1:    return;
}


extern void work_m_02988832564607993760_3189980446_init()
{
	static char *pe[] = {(void *)Cont_25_0};
	xsi_register_didat("work_m_02988832564607993760_3189980446", "isim/top_check_sec_tb_isim_beh.exe.sim/work/m_02988832564607993760_3189980446.didat");
	xsi_register_executes(pe);
}
