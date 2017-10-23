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

char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    work_a_0481205503_3212880686_init();
    work_a_0089776498_3212880686_init();
    work_a_3170902218_3212880686_init();
    work_a_3219856015_3212880686_init();
    work_a_3028612199_3212880686_init();
    work_a_3875023161_3212880686_init();
    work_a_1991284029_3212880686_init();
    work_a_2615964831_3212880686_init();
    work_a_3452549652_3212880686_init();
    work_a_1487456988_3212880686_init();
    work_a_0025243628_3212880686_init();
    work_a_2841884315_3212880686_init();
    work_a_2436780169_3212880686_init();
    work_a_0403123848_3212880686_init();
    work_a_1526946367_3212880686_init();
    work_a_1513332410_3212880686_init();
    work_a_3658716949_3212880686_init();
    work_a_1632567566_3212880686_init();
    work_a_2139858504_3212880686_init();
    work_a_1774854872_3212880686_init();
    work_a_1064484548_2372691052_init();


    xsi_register_tops("work_a_1064484548_2372691052");

    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
