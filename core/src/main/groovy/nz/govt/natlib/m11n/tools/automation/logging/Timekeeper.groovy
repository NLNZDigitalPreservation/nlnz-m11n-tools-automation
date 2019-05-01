package nz.govt.natlib.m11n.tools.automation.logging

import groovy.time.TimeCategory
import groovy.time.TimeDuration
import groovy.util.logging.Slf4j

import java.text.DateFormat
import java.text.DecimalFormat
import java.text.SimpleDateFormat

@Slf4j
class Timekeeper {
    DateFormat TIMESTAMP_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS Z")
    DecimalFormat PROCESSING_RATE_FORMAT = new DecimalFormat("#,###,###,###.000")
    DecimalFormat PROCESSED = new DecimalFormat("###,###,###,###")
    Date startDateTime = null
    Date stopDateTime = null
    Date lastElapsed = null
    long lastCount = 0L


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

    void logElapsed(boolean useDebug = false, long currentCount = 0L, boolean showRate = false) {
        TimeDuration elapsedTime = elapsedSinceLastElapsed()
        String message = "elapsedTime=${elapsedTime}, totalTime=${totalTime()}, " +
                "startTime=${TIMESTAMP_FORMAT.format(startDateTime)} [currentTime=${TIMESTAMP_FORMAT.format(new Date())}]"
        if (showRate) {
            String totalProcessingRate = processingRate(currentCount, elapsedTime)
            String incrementalProcessingRate = processingRate(currentCount - lastCount, elapsedTime)
            String processingRateMessage = ", processed=${PROCESSED.format(currentCount)}, " +
                    "incremental rate=${incrementalProcessingRate}, total rate=${totalProcessingRate}"
            message = "${message}${processingRateMessage}"
        }
        if (useDebug) {
            log.debug(message)
        } else {
            log.info(message)
        }
        lastCount = currentCount
    }

    String processingRate(long processedCount, TimeDuration elapsedTime) {
        // We probably want a 2 to 3 digit rate
        if (elapsedTime.hours > 0) {
            double ratePerHour = processedCount / elapsedTime.hours
            if (ratePerHour < 59) {
                String rate = PROCESSING_RATE_FORMAT.format(ratePerHour)
                return "${rate}/hour"
            }
        }
        if (elapsedTime.minutes > 0) {
            double ratePerMinute = processedCount / elapsedTime.minutes
            if (ratePerMinute < 59) {
                String rate = PROCESSING_RATE_FORMAT.format(ratePerMinute)
                return "${rate}/minute"
            }
        }
        if (elapsedTime.millis > 0) {
            double ratePerSecond = 1000 * processedCount / elapsedTime.millis
            String rate = PROCESSING_RATE_FORMAT.format(ratePerSecond)
            return "${rate}/second"
        }
        return "<rate too low to measure>"
    }

}
