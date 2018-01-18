package nz.govt.nzqa.m11n.tools.automation.wrapper

import org.junit.Before

/**
 * Tests the {@link SybaseWrapper}.
 */
class SybaseWrapperTest {
    SybaseWrapper sybaseWrapper

    @Before
    void setup() {
        sybaseWrapper = new SybaseWrapper()
    }

}