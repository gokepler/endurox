#!/bin/bash
## 
##
## @file test_mkfldhdr_syntax_err.sh
## 
## -----------------------------------------------------------------------------
## Enduro/X Middleware Platform for Distributed Transaction Processing
## Copyright (C) 2015, Mavimax, Ltd. All Rights Reserved.
## This software is released under one of the following licenses:
## GPL or Mavimax's license for commercial use.
## -----------------------------------------------------------------------------
## GPL license:
## 
## This program is free software; you can redistribute it and/or modify it under
## the terms of the GNU General Public License as published by the Free Software
## Foundation; either version 2 of the License, or (at your option) any later
## version.
##
## This program is distributed in the hope that it will be useful, but WITHOUT ANY
## WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
## PARTICULAR PURPOSE. See the GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License along with
## this program; if not, write to the Free Software Foundation, Inc., 59 Temple
## Place, Suite 330, Boston, MA 02111-1307 USA
##
## -----------------------------------------------------------------------------
## A commercial use license is available from Mavimax, Ltd
## contact@mavimax.com
## -----------------------------------------------------------------------------
##
echo "Testing mkfldhdr, Syntax Error." >&2
#####
DIR=`mktemp -d`

#  Generate files
ret=0

# Load env variables
export FLDTBLDIR="."
# We re-use script by it self - it should be completely wrong!
export FIELDTBLS="test_mkfldhdr_syntax_err.sh"

../mkfldhdr/mkfldhdr -d $DIR
# save return code
ret=$?

# Remove temp dir
rm -rf $DIR
exit $ret
