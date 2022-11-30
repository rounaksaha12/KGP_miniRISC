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
static const char *ng0 = "/home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/MUX_10to1.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {8U, 0U};
static unsigned int ng10[] = {9U, 0U};
static int ng11[] = {0, 0};



static void Always_39_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 4096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 4416);
    *((int *)t2) = 1;
    t3 = (t0 + 4128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);

LAB5:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 2784U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:
LAB28:
LAB27:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3184);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB29:    goto LAB2;

LAB7:    xsi_set_current_line(43, ng0);
    t7 = (t0 + 1184U);
    t8 = *((char **)t7);
    t7 = (t0 + 3184);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    goto LAB29;

LAB9:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 1344U);
    t4 = *((char **)t3);
    t3 = (t0 + 3184);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB11:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 1504U);
    t4 = *((char **)t3);
    t3 = (t0 + 3184);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB13:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 1664U);
    t4 = *((char **)t3);
    t3 = (t0 + 3184);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB15:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1824U);
    t4 = *((char **)t3);
    t3 = (t0 + 3184);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB17:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1984U);
    t4 = *((char **)t3);
    t3 = (t0 + 3184);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB19:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 2144U);
    t4 = *((char **)t3);
    t3 = (t0 + 3184);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB21:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 2304U);
    t4 = *((char **)t3);
    t3 = (t0 + 3184);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB23:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 2464U);
    t4 = *((char **)t3);
    t3 = (t0 + 3184);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB25:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 2624U);
    t4 = *((char **)t3);
    t3 = (t0 + 3184);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

}


extern void work_m_14690352758135422791_4285754386_init()
{
	static char *pe[] = {(void *)Always_39_0};
	xsi_register_didat("work_m_14690352758135422791_4285754386", "isim/CPU_FPGA_TB_isim_beh.exe.sim/work/m_14690352758135422791_4285754386.didat");
	xsi_register_executes(pe);
}
