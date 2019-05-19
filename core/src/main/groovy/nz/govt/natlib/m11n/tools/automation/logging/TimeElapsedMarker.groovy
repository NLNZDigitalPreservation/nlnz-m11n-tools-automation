package nz.govt.natlib.m11n.tools.automation.logging

import groovy.time.TimeDuration
import groovy.transform.Canonical
import groovy.util.logging.Slf4j

@Slf4j
@Canonical
class TimeElapsedMarker {
    TimeDuration elapsedTime
    TimeDuration totalTime
    String marker
    String markerDescription

    TimeElapsedMarker(TimeDuration elapsedTime, TimeDuration totalTime, String marker, String markerDescription) {
        this.elapsedTime = elapsedTime
        this.totalTime = totalTime
        this.marker = marker
        this.markerDescription = markerDescription
    }
}
