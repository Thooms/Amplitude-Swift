//
//  File.swift
//
//
//  Created by Marvin Liu on 10/27/22.
//

import Foundation

public class Configuration {
    var apiKey: String
    var flushQueueSize: Int
    var flushIntervalMillis: Int
    var instanceName: String
    var optOut: Bool
    var storageProvider: Storage
    var logLvel: LogLevelEnum
    var loggerProvider: any Logger
    var minIdLength: Int?
    var partnerId: String?
    var callback: EventCallBack?
    var flushMaxRetries: Int
    var useBatch: Bool
    var serverZone: ServerZone
    var serverUrl: String?
    var plan: Plan?
    var ingestionMetadata: IngestionMetadata?
    var trackingOptions: TrackingOptions?

    init(
        apiKey: String,
        flushQueueSize: Int = Constants.Configuration.FLUSH_QUEUE_SIZE,
        flushIntervalMillis: Int = Constants.Configuration.FLUSH_INTERVAL_MILLIS,
        instanceName: String = Constants.Configuration.DEFAULT_INSTANCE,
        optOut: Bool = false,
        storageProvider: Storage = PersistentStorage(),
        logLvel: LogLevelEnum = LogLevelEnum.WARN,
        loggerProvider: any Logger = ConsoleLogger(),
        minIdLength: Int? = nil,
        partnerId: String? = nil,
        callback: EventCallBack? = nil,
        flushMaxRetries: Int = Constants.Configuration.FLUSH_MAX_RETRIES,
        useBatch: Bool = false,
        serverZone: ServerZone = ServerZone.US,
        serverUrl: String = Constants.DEFAULT_API_HOST,
        plan: Plan? = nil,
        ingestionMetadata: IngestionMetadata? = nil
    ) {
        self.apiKey = apiKey
        self.flushQueueSize = flushQueueSize
        self.flushIntervalMillis = flushIntervalMillis
        self.instanceName = instanceName
        self.optOut = optOut
        self.storageProvider = storageProvider
        self.logLvel = logLvel
        self.loggerProvider = loggerProvider
        self.minIdLength = minIdLength
        self.partnerId = partnerId
        self.callback = callback
        self.flushMaxRetries = flushMaxRetries
        self.useBatch = useBatch
        self.serverZone = serverZone
        self.serverUrl = serverUrl
        self.plan = plan
        self.ingestionMetadata = ingestionMetadata
    }
}
