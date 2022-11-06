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
static const char *ng0 = "/home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/SHIFTER.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};



static void Always_35_0(char *t0)
{
    char t4[8];
    char t22[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    int t21;

LAB0:    t1 = (t0 + 2840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3160);
    *((int *)t2) = 1;
    t3 = (t0 + 2872);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(44, ng0);

LAB14:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);

LAB15:    t2 = ((char*)((ng1)));
    t21 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t21 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng2)));
    t21 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t21 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng3)));
    t21 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t21 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng4)));
    t21 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t21 == 1)
        goto LAB22;

LAB23:
LAB24:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(39, ng0);

LAB13:    xsi_set_current_line(40, ng0);
    t19 = (t0 + 1208U);
    t20 = *((char **)t19);
    t19 = (t0 + 1928);
    xsi_vlogvar_assign_value(t19, t20, 0, 0, 32);
    goto LAB12;

LAB16:    xsi_set_current_line(46, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    t5 = (t0 + 1528U);
    t12 = *((char **)t5);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_lshift(t4, 32, t6, 32, t12, 5);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    goto LAB24;

LAB18:    xsi_set_current_line(47, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    t5 = (t0 + 1528U);
    t12 = *((char **)t5);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_arith_lshift(t4, 32, t6, 32, t12, 5);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    goto LAB24;

LAB20:    xsi_set_current_line(48, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    t5 = (t0 + 1528U);
    t12 = *((char **)t5);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_rshift(t4, 32, t6, 32, t12, 5);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    goto LAB24;

LAB22:    xsi_set_current_line(49, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    t5 = (t0 + 1528U);
    t12 = *((char **)t5);
    memset(t22, 0, 8);
    xsi_vlog_signed_arith_rshift(t22, 32, t6, 32, t12, 5);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t22, 0, 0, 32);
    goto LAB24;

}


extern void work_m_14562799346671179117_3167974792_init()
{
	static char *pe[] = {(void *)Always_35_0};
	xsi_register_didat("work_m_14562799346671179117_3167974792", "isim/lw_sw_test_isim_beh.exe.sim/work/m_14562799346671179117_3167974792.didat");
	xsi_register_executes(pe);
}
