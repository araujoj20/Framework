/* ###*B*###
 * Erika Enterprise, version 3
 * 
 * Copyright (C) 2017 - 2018 Evidence s.r.l.
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at
 * your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License, version 2, for more details.
 * 
 * You should have received a copy of the GNU General Public License,
 * version 2, along with this program; if not, see
 * < www.gnu.org/licenses/old-licenses/gpl-2.0.html >.
 * 
 * This program is distributed to you subject to the following
 * clarifications and special exceptions to the GNU General Public
 * License, version 2.
 * 
 * THIRD PARTIES' MATERIALS
 * 
 * Certain materials included in this library are provided by third
 * parties under licenses other than the GNU General Public License. You
 * may only use, copy, link to, modify and redistribute this library
 * following the terms of license indicated below for third parties'
 * materials.
 * 
 * In case you make modified versions of this library which still include
 * said third parties' materials, you are obligated to grant this special
 * exception.
 * 
 * The complete list of Third party materials allowed with ERIKA
 * Enterprise version 3, together with the terms and conditions of each
 * license, is present in the file THIRDPARTY.TXT in the root of the
 * project.
 * ###*E*### */

/** \file   ee_std_change_context.c
 *  \brief  Standard Change Context Implementation.
 *
 *  This files contains the definition of a set of standard internals functions
 *  used to perform context switch.
 *
 *  \note TO BE DOCUMENTED!!!
 *
 *  \author Errico Guidieri
 *  \date   2016
 */
#include "ee_internal.h"

FUNC(void, OS_CODE) osEE_cortex_m_scheduler_task_end(void)
{

  CONSTP2VAR(OsEE_CDB, AUTOMATIC, OS_APPL_DATA)  p_cdb = osEE_get_curr_core();
  CONSTP2VAR(OsEE_CCB, AUTOMATIC, OS_APPL_DATA)  p_ccb = p_cdb->p_ccb;
  CONSTP2VAR(OsEE_SN, AUTOMATIC, OS_APPL_DATA)   p_term_sn = p_ccb->p_stk_sn;
  CONSTP2VAR(OsEE_SN, AUTOMATIC, OS_APPL_DATA)
    p_orig_task_sn = p_term_sn->p_next;
  P2VAR(OsEE_TDB, AUTOMATIC, OS_APPL_DATA)  p_orig_tdb;

  /* p_orig_task_sn == NULL means I preempted idle task */
  if (p_orig_task_sn != NULL) {
    p_orig_tdb = p_orig_task_sn->p_tdb;
  } else {
    p_orig_tdb = p_cdb->p_idle_task;
  }

#if	0
  if (p_ccb->p_curr->task_type != OSEE_TASK_TYPE_ISR2) {
    P2VAR(OsEE_TDB, AUTOMATIC, OS_APPL_DATA)  p_to;
    P2VAR(OsEE_TDB, AUTOMATIC, OS_APPL_DATA)  p_from;
    p_to = osEE_scheduler_task_terminated(osEE_get_kernel(), &p_from);
    osEE_change_context_from_task_end(p_from, p_to);
  } else {
    p_ccb->p_stk_sn = p_orig_task_sn;
    p_ccb->p_curr = p_orig_tdb;
#if (defined(OSEE_HAS_PRETASKHOOK))
    /* We are having a termination so the hook flag has to be unset */
    p_ccb->p_last_tdb_hook = NULL;
#endif	/* OSEE_HAS_PRETASKHOOK */
    osEE_task_end(p_term_sn->p_tdb);

    osEE_lock_core(p_cdb);
    osEE_sn_release(&p_ccb->p_free_sn, p_term_sn);
    osEE_unlock_core(p_cdb);
    /* With these CTX restore I'll jump back on ISR2 wrapper on preempted stack
       (osEE_cortex_m_isr2_stub) after osEE_activate_isr2(t) call */
    /* Set PendSV */
    osEE_cortex_m_trigger_pend_sv();
    osEE_hal_restore_ctx(p_orig_tdb, p_orig_tdb->hdb.p_scb);
  }
#else
  if (p_ccb->p_curr->task_type != OSEE_TASK_TYPE_ISR2) {
    P2VAR(OsEE_TDB, AUTOMATIC, OS_APPL_DATA)            p_from;
    CONSTP2VAR(OsEE_TDB, AUTOMATIC, OS_APPL_DATA)       p_to =
      osEE_scheduler_task_terminated(osEE_get_kernel(), &p_from);

    osEE_change_context_from_task_end(p_from, p_to);
  } else {
    /* Pop p_term_sn from stacked queue */
    p_ccb->p_stk_sn = p_orig_task_sn;

    /* TASK Clean-up in termination */
    osEE_task_end(p_term_sn->p_tdb);

#if (defined(OSEE_HAS_PRETASKHOOK))
    /* We are having a termination so the hook flag has to be unset */
    p_ccb->p_last_tdb_hook = NULL;
#endif	/* OSEE_HAS_PRETASKHOOK */

    /* Set back orig TDB as current RUNNING TASK */
    p_ccb->p_curr = p_orig_tdb;
    p_orig_tdb->p_tcb->status = OSEE_TASK_RUNNING;

    /* Release the p_term_sn */
    osEE_lock_core(p_cdb);
    osEE_sn_release(&p_ccb->p_free_sn, p_term_sn);
    osEE_unlock_core(p_cdb);

    /* Set PendSV */
    osEE_cortex_m_trigger_pend_sv();

    /* With these CTX restore I'll jump back on ISR2 wrapper on preempted stack
       (osEE_cortex_m_isr2_stub) after osEE_activate_isr2(t) call */
    osEE_hal_restore_ctx(p_orig_tdb, p_orig_tdb->hdb.p_scb);
  }
#endif

}
