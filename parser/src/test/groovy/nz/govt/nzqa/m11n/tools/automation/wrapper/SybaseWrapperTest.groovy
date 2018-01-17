package nz.govt.nzqa.m11n.tools.automation.wrapper

import org.junit.Before
import org.junit.Test
import static org.junit.Assert.assertEquals

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.wrapper.SybaseWrapper}.
 */
class SybaseWrapperTest {
    SybaseWrapper sybaseWrapper

    @Before
    void setup() {
        sybaseWrapper = new SybaseWrapper()
    }

}