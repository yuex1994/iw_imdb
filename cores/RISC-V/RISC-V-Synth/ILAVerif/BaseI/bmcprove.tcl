set ROOT_PATH ./
set RTL_PATH  ${ROOT_PATH}

set_capture_elaborated_design on

analyze -sv \
	${RTL_PATH}/ALU.v \
	${RTL_PATH}/BreakpointUnit.v \
	${RTL_PATH}/CSRFile.v \
	${RTL_PATH}/RVCExpander.v \
	${RTL_PATH}/IBuf.v \
	${RTL_PATH}/MulDiv.v \
	${RTL_PATH}/RISC-V-VLG.v \
	${RTL_PATH}/Rocket.v \
	${RTL_PATH}/ShareMem.v 

analyze -sva \
	${RTL_PATH}/RocketFV.v 

elaborate -top RocketFV -bbox_a 65536


jasper_model_mpram -init sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem
jasper_model_mpram -justify sm.inst_mem

clock clock
reset reset

get_design_info


set_engine_mode {Hp Ht Bm B N}; set_max_trace_length 25

prove -property {<embedded>::RocketFV.x0_nouse <embedded>::RocketFV.x0_nouse:precondition1 <embedded>::RocketFV.x1_nro <embedded>::RocketFV.x1_nro:precondition1 <embedded>::RocketFV.x1_ro <embedded>::RocketFV.x1_ro:precondition1 <embedded>::RocketFV.x1_ld <embedded>::RocketFV.x1_ld:precondition1 <embedded>::RocketFV.pc_a <embedded>::RocketFV.pc_a:precondition1 <embedded>::RocketFV.mem_match <embedded>::RocketFV.mem_match:precondition1}

save -dir /n/homeserver2/user2a/hongcez/rv32i-ila-verif/db/OR/ -elaborated_design /n/homeserver2/user2a/hongcez/rv32i-ila-verif/db/OR/OR.elb

exit

