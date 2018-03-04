package nz.govt.nzqa.m11n.tools.automation.logging

import groovy.time.TimeCategory
import groovy.time.TimeDuration
import groovy.util.logging.Slf4j

import java.text.DateFormat
import java.text.SimpleDateFormat

@Slf4j
class Timekeeper {
    DateFormat TIMESTAMP_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS Z")
    Date startDateTime = null
    Date stopDateTime = null
    Date lastElapsed = null

    Timekeeper() {
        startDateTime = new Date()
    }

    void start() {
        startDateTime = new Date()
    }

    void stop() {
        stopDateTime = new Date()
    }

    TimeDuration elapsedSinceLastElapsed() {
        // We don't increment after we stop
        Date currentDate = stopDateTime == null ? new Date() : stopDateTime
        TimeDuration elapsed = TimeCategory.minus(currentDate, lastElapsed == null ? startDateTime : lastElapsed)
        lastElapsed = currentDate
        return elapsed
    }

    TimeDuration totalTime() {
        return TimeCategory.minus(stopDateTime == null ? new Date() : stopDateTime, startDateTime)
    }

    void logElapsed(boolean useDebug = false) {
        String message = "elapsedTime=${elapsedSinceLastElapsed()}, totalTime=${totalTime()}, " +
                "startTime=${TIMESTAMP_FORMAT.format(startDateTime)} [currentTime=${TIMESTAMP_FORMAT.format(new Date())}]"
        if (useDebug) {
            log.debug(message)
        } else {
            log.info(message)
        }
    }

}
