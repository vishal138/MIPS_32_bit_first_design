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
static const char *ng0 = "/home/vishal/xilinx/MIPS_32_bit_first_design/comparator_32bit.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488768497506413324_503743352(char *, unsigned char , unsigned char );


static void work_a_3452549652_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned char t22;
    unsigned char t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 5042);
    *((int *)t1) = 0;
    t2 = (t0 + 5046);
    *((int *)t2) = 31;
    t3 = 0;
    t4 = 31;

LAB2:    if (t3 <= t4)
        goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t13 = *((unsigned char *)t2);
    t1 = (t0 + 3144);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t12 = (t6 + 56U);
    t14 = *((char **)t12);
    *((unsigned char *)t14) = t13;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    t1 = (t0 + 3064);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(44, ng0);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t5 = (t0 + 5042);
    t7 = *((int *)t5);
    t8 = (t7 - 31);
    t9 = (t8 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, *((int *)t5));
    t10 = (1U * t9);
    t11 = (0 + t10);
    t12 = (t6 + t11);
    t13 = *((unsigned char *)t12);
    t14 = (t0 + 1192U);
    t15 = *((char **)t14);
    t14 = (t0 + 5042);
    t16 = *((int *)t14);
    t17 = (t16 - 31);
    t18 = (t17 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, *((int *)t14));
    t19 = (1U * t18);
    t20 = (0 + t19);
    t21 = (t15 + t20);
    t22 = *((unsigned char *)t21);
    t23 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t13, t22);
    t24 = (t0 + 1648U);
    t25 = *((char **)t24);
    t24 = (t25 + 0);
    *((unsigned char *)t24) = t23;
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t13 = *((unsigned char *)t2);
    t22 = (t13 == (unsigned char)3);
    if (t22 != 0)
        goto LAB6;

LAB8:
LAB7:
LAB4:    t1 = (t0 + 5042);
    t3 = *((int *)t1);
    t2 = (t0 + 5046);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB9:    t7 = (t3 + 1);
    t3 = t7;
    t5 = (t0 + 5042);
    *((int *)t5) = t3;
    goto LAB2;

LAB6:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1768U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB7;

}


extern void work_a_3452549652_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3452549652_3212880686_p_0};
	xsi_register_didat("work_a_3452549652_3212880686", "isim/simulation_isim_beh.exe.sim/work/a_3452549652_3212880686.didat");
	xsi_register_executes(pe);
}
