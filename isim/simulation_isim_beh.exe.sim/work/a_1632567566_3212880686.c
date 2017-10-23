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
static const char *ng0 = "/home/vishal/xilinx/MIPS_32_bit_first_design/data_memory.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);


static void work_a_1632567566_3212880686_p_0(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    int t14;
    unsigned int t15;
    int t16;
    char *t17;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 38664);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB2;

LAB3:    t4 = (t0 + 3344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 128U, 32U, 0LL);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB4;

LAB6:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t10 = (31 - 31);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t4 = (t13 + 0U);
    t5 = (t4 + 0U);
    *((int *)t5) = 31;
    t5 = (t4 + 4U);
    *((int *)t5) = 0;
    t5 = (t4 + 8U);
    *((int *)t5) = -1;
    t14 = (0 - 31);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t5 = (t4 + 12U);
    *((unsigned int *)t5) = t15;
    t16 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t1, t13);
    t5 = (t0 + 1968U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((int *)t5) = t16;
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 1968U);
    t4 = *((char **)t1);
    t14 = *((int *)t4);
    t16 = (t14 - 0);
    t10 = (t16 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t14);
    t11 = (32U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t5 = (t0 + 3408);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t17 = *((char **)t8);
    memcpy(t17, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB5:    t1 = (t0 + 3264);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB3;

LAB4:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t10 = (31 - 31);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t1 = (t4 + t12);
    t5 = (t13 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 31;
    t6 = (t5 + 4U);
    *((int *)t6) = 0;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t14 = (0 - 31);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t15;
    t16 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t1, t13);
    t6 = (t0 + 1968U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    *((int *)t6) = t16;
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1968U);
    t4 = *((char **)t1);
    t14 = *((int *)t4);
    t16 = (t14 - 0);
    t10 = (t16 * 1);
    t11 = (32U * t10);
    t12 = (0U + t11);
    t1 = (t0 + 3344);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_delta(t1, t12, 32U, 0LL);
    goto LAB5;

}


extern void work_a_1632567566_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1632567566_3212880686_p_0};
	xsi_register_didat("work_a_1632567566_3212880686", "isim/simulation_isim_beh.exe.sim/work/a_1632567566_3212880686.didat");
	xsi_register_executes(pe);
}
