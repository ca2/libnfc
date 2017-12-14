﻿/*-
 * Free/Libre Near Field Communication (NFC) library
 *
 * Libnfc historical contributors:
 * Copyright (C) 2009      Roel Verdult
 * Copyright (C) 2009-2013 Romuald Conty
 * Copyright (C) 2010-2012 Romain Tartière
 * Copyright (C) 2010-2013 Philippe Teuwen
 * Copyright (C) 2012-2013 Ludovic Rousseau
 * See AUTHORS file for a more comprehensive list of contributors.
 * Additional contributors of this file:
 * Copyright (C) 2013      Alex Lian
 *
 * This program is free software: you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by the
 * Free Software Foundation, either version 3 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>
 */

#include "log-internal.h"
#include <nfc/nfc.h>

#include <stdio.h>
#include <stdarg.h>
#include <strsafe.h>


PFN_NFC_OUTPUT_DEBUG_STRING g_pnfcoutputdebugstring = NULL;
static void
log_output_debug(const char *format, va_list args)
{
   char buffer[1024];
   HRESULT hr = StringCbVPrintf(buffer, sizeof(buffer), format, args);
   // Spew what we got, even if the buffer is not sized large enough
   if ((STRSAFE_E_INSUFFICIENT_BUFFER == hr) || (S_OK == hr))
      OutputDebugString(buffer);
   if (g_pnfcoutputdebugstring != NULL)
   {
      (*g_pnfcoutputdebugstring)(buffer);
   }

}

void nfc_set_output_debug_string_function(PFN_NFC_OUTPUT_DEBUG_STRING pfn)
{
   g_pnfcoutputdebugstring = pfn;

}

void
log_vput_internal(const char *format, va_list args)
{
   vfprintf(stderr, format, args);
   // Additional windows output to the debug window for debugging purposes
   log_output_debug(format, args);
}

void
log_put_internal(const char *format, ...)
{
   va_list va;
   va_start(va, format);
   vfprintf(stderr, format, va);
   // Additional windows output to the debug window for debugging purposes
   log_output_debug(format, va);
   va_end(va);
}
