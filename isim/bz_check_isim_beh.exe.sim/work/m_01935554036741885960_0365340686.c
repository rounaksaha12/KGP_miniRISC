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
static const char *ng0 = "/home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/ADDR_32bit.v";



static void Cont_27_0(char *t0)
{
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 2840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_add(t5, 33, t3, 32, t4, 32);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_unsigned_add(t7, 33, t5, 33, t6, 1);
    t2 = (t0 + 3304);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 32);
    xsi_driver_vfirst_trans(t2, 0, 31);
    t12 = (t0 + 3240);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    xsi_vlog_bit_copy(t16, 0, t7, 32, 1);
    xsi_driver_vfirst_trans(t12, 0, 0);
    t17 = (t0 + 3160);
    *((int *)t17) = 1;

LAB1:    return;
}


extern void work_m_01935554036741885960_0365340686_init()
{
	static char *pe[] = {(void *)Cont_27_0};
	xsi_register_didat("work_m_01935554036741885960_0365340686", "isim/bz_check_isim_beh.exe.sim/work/m_01935554036741885960_0365340686.didat");
	xsi_register_executes(pe);
}
