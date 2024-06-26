/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.apache.kylin.common.scheduler;

import java.util.Locale;
import java.util.function.Consumer;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SchedulerEventNotifier {

    protected String project;
    protected String subject;
    protected Consumer<SchedulerEventNotifier> callback;

    public String getEventType() {
        return this.getClass().getSimpleName();
    }

    public void invokeCallbackIfExists() {
        if (callback != null) {
            callback.accept(this);
        }
    }

    @Override
    public String toString() {
        return String.format(Locale.ROOT, "%s {project=%s, subject=%s, callback=%s}", getEventType(), project,
                subject, callback);
    }
}
