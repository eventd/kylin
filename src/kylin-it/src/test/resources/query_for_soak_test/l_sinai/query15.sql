--
-- Licensed to the Apache Software Foundation (ASF) under one
-- or more contributor license agreements.  See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership.  The ASF licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License.  You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
SELECT COUNT(DISTINCT "Z_PROVDASH_UM_ED"."MEMBER_ID") AS "ctd_MEMBER_ID_ok",
SUM({fn CONVERT(0, SQL_BIGINT)}) AS "sum_Calculation_336925569152049156_ok"
FROM "POPHEALTH_ANALYTICS"."Z_PROVDASH_UM_ED" "Z_PROVDASH_UM_ED"
WHERE ("Z_PROVDASH_UM_ED"."FULL_NAME" = 'JONATHAN AREND')
HAVING (COUNT(1) > 0);