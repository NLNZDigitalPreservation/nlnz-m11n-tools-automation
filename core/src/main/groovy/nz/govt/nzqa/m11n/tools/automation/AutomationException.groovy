package nz.govt.nzqa.m11n.tools.automation

/**
 * Exception for automation classes. When this class is synchronised with the m11n-tools-automation its superclass
 * becomes RuntimeException so that it works the same way.
 */
class AutomationException extends RuntimeException {

    AutomationException(String message) {
        super(message)
    }
}
