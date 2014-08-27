#ifndef UTILITES_H
#define UTILITES_H

#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>

/*
	Макросы.
*/
#define _B(x) strtoull(#x, 0, 2)

/*
	Прототипы.
*/
void copy_memory32(void* p_dest, void* p_src, uint32_t dcount);
void copy_memory64(void* p_dest, void* p_src, uint32_t dcount);
bool is_pow2(uint32_t dnumber);

#endif