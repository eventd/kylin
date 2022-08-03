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
-- with agg pushdown
SELECT TEST_KYLIN_FACT.CAL_DT, sum(TEST_KYLIN_FACT.ITEM_COUNT)
FROM TEST_KYLIN_FACT
LEFT JOIN
(
  select ACCOUNT_ID, sum(ACCOUNT_BUYER_LEVEL)
  FROM TEST_ACCOUNT
  group by ACCOUNT_ID
) TEST_ACC
ON
TEST_KYLIN_FACT.SELLER_ID = TEST_ACC.ACCOUNT_ID
AND TEST_KYLIN_FACT.LSTG_FORMAT_NAME = 'FP-GTC'
GROUP BY TEST_KYLIN_FACT.CAL_DT
ORDER BY 1,2
LIMIT 10000