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
static const char *ng0 = "/home/vishal/xilinx/MIPS_32_bit_first_design/reg_memory.vhd";



static void work_a_2139858504_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4424);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1192U);
    t9 = *((char **)t2);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)2);
    if (t11 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB11;

LAB12:
LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1512U);
    t12 = *((char **)t2);
    t13 = *((unsigned char *)t12);
    t2 = (t0 + 4504);
    t14 = (t2 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t13;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (t0 + 4568);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t14 = *((char **)t12);
    *((unsigned char *)t14) = t1;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 4632);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t3, 5U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 4696);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t3, 32U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t2 = (t0 + 4760);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t3, 32U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB11:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t5 = *((unsigned char *)t6);
    t2 = (t0 + 4504);
    t9 = (t2 + 56U);
    t12 = *((char **)t9);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t5;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (t0 + 4568);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t14 = *((char **)t12);
    *((unsigned char *)t14) = t1;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 4632);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t3, 5U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 4696);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t3, 32U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t2 = (t0 + 4760);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t3, 32U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

}


extern void work_a_2139858504_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2139858504_3212880686_p_0};
	xsi_register_didat("work_a_2139858504_3212880686", "isim/simulation_isim_beh.exe.sim/work/a_2139858504_3212880686.didat");
	xsi_register_executes(pe);
}
