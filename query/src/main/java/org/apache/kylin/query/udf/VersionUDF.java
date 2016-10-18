package org.apache.kylin.query.udf;

import org.apache.kylin.common.KylinVersion;

public class VersionUDF {
    public String eval() {
        return KylinVersion.getCurrentVersion().toString();
    }
}
