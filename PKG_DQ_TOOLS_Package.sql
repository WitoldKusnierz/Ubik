CREATE OR REPLACE PACKAGE STAGE.PKG_DQ_TOOLS AS

/*****************************************************************************************
*
*  Name    : PKG_DQ_TOOLS
*  Date    : 21/02/2013
*  Version  : 1.0
*  Author   : Rittman Mead Consulting, Witold Kusnierz, Rita Santos
*  Description: PL/SQL package delivered as part of DQ PoC to test alternative DQ mechnism.
*
*  Related objects:
*  Tables: STAGE.PKG_DQ_TOOLS_RUN, STAGE.PKG_DQ_TOOLS_RUN_LOG
*  Sequences: STAGE.PKG_DQ_TOOLS_SEQ
*
*  Revision History
*  Author      Date      Version   Description
*  --------     ------    ---------  -------------
*****************************************************************************************/
 
  PROCEDURE DQ_BETS(P_QUEUE_TYPE IN VARCHAR2 DEFAULT 'Capture', P_DQ_BATCH_SIZE IN NUMBER DEFAULT 100, P_RUN_LOG_TYPE IN VARCHAR2 DEFAULT 'ERROR');
 
  PROCEDURE PURGE_LOG (P_MODE IN VARCHAR2 DEFAULT 'Complete');

  PROCEDURE ARCHIVE_MSGS(P_TABLE_NAME IN VARCHAR2 DEFAULT 'ERROR_NO_TABLE', P_RETNTION_WINDOW IN NUMBER DEFAULT 2, P_TABLE_OWNER IN VARCHAR2 DEFAULT 'DELTA');
  
  PROCEDURE GET_LAST_ERROR(P_QUEUE_TYPE IN VARCHAR2 DEFAULT 'Capture', P_RAISE_FLG IN VARCHAR2 DEFAULT 'Y');

END;