package nz.govt.nzqa.m11n.tools.automation.shell

/**
 * Determines the operating system. Caches the result.
 */
@Singleton(strict=false)
class OperatingSystemFinder {
    /**
     * The different possible operating systems.
     */
    static enum OperatingSystemType {
        Windows, Linux, MacOS, Other
    }

    private OperatingSystemType operatingSystemType

    private OperatingSystemFinder() {
        this.operatingSystemType = findOperatingSystemType()
    }

    /**
     * Finds the operating system type.
     *
     * @return - the operating system detected
     */
    static OperatingSystemType findOperatingSystemType() {
        OperatingSystemType osType
        String operatingSystem = System.getProperty("os.name", "generic").toLowerCase(Locale.ENGLISH);
        if (operatingSystem.indexOf("nux") >= 0) {
            osType = OperatingSystemType.Linux
        } else if (operatingSystem.indexOf("nux") >= 0) {
            osType = OperatingSystemType.Linux
        } else if ((operatingSystem.indexOf("mac") >= 0) || (operatingSystem.indexOf("darwin") >= 0)) {
            // mac needs to be checked first because 'win' is contained in 'darwin'
            osType = OperatingSystemType.MacOS
        } else if (operatingSystem.indexOf("win") >= 0) {
            osType = OperatingSystemType.Windows
        } else {
            osType = OperatingSystemType.Other
        }
        return osType
    }

    OperatingSystemType getOperatingSystemType() {
        return this.operatingSystemType
    }
}
