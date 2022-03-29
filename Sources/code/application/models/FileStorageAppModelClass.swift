import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: FailedResponse
         Used By: FileStorage
     */
    class FailedResponse: Codable {
        public var message: String

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String) {
            self.message = message
        }

        public func duplicate() -> FailedResponse {
            let dict = self.dictionary!
            let copy = FailedResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: CDN
         Used By: FileStorage
     */
    class CDN: Codable {
        public var url: String

        public enum CodingKeys: String, CodingKey {
            case url
        }

        public init(url: String) {
            self.url = url
        }

        public func duplicate() -> CDN {
            let dict = self.dictionary!
            let copy = CDN(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: Upload
         Used By: FileStorage
     */
    class Upload: Codable {
        public var expiry: Int

        public var url: String

        public enum CodingKeys: String, CodingKey {
            case expiry

            case url
        }

        public init(expiry: Int, url: String) {
            self.expiry = expiry

            self.url = url
        }

        public func duplicate() -> Upload {
            let dict = self.dictionary!
            let copy = Upload(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            expiry = try container.decode(Int.self, forKey: .expiry)

            url = try container.decode(String.self, forKey: .url)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expiry, forKey: .expiry)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: StartResponse
         Used By: FileStorage
     */
    class StartResponse: Codable {
        public var fileName: String

        public var filePath: String

        public var contentType: String

        public var method: String

        public var namespace: String

        public var operation: String

        public var size: Int

        public var upload: Upload

        public var cdn: CDN

        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case fileName = "file_name"

            case filePath = "file_path"

            case contentType = "content_type"

            case method

            case namespace

            case operation

            case size

            case upload

            case cdn

            case tags
        }

        public init(cdn: CDN, contentType: String, fileName: String, filePath: String, method: String, namespace: String, operation: String, size: Int, tags: [String]? = nil, upload: Upload) {
            self.fileName = fileName

            self.filePath = filePath

            self.contentType = contentType

            self.method = method

            self.namespace = namespace

            self.operation = operation

            self.size = size

            self.upload = upload

            self.cdn = cdn

            self.tags = tags
        }

        public func duplicate() -> StartResponse {
            let dict = self.dictionary!
            let copy = StartResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fileName = try container.decode(String.self, forKey: .fileName)

            filePath = try container.decode(String.self, forKey: .filePath)

            contentType = try container.decode(String.self, forKey: .contentType)

            method = try container.decode(String.self, forKey: .method)

            namespace = try container.decode(String.self, forKey: .namespace)

            operation = try container.decode(String.self, forKey: .operation)

            size = try container.decode(Int.self, forKey: .size)

            upload = try container.decode(Upload.self, forKey: .upload)

            cdn = try container.decode(CDN.self, forKey: .cdn)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fileName, forKey: .fileName)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(contentType, forKey: .contentType)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(namespace, forKey: .namespace)

            try? container.encodeIfPresent(operation, forKey: .operation)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(upload, forKey: .upload)

            try? container.encodeIfPresent(cdn, forKey: .cdn)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }

    /*
         Model: StartRequest
         Used By: FileStorage
     */
    class StartRequest: Codable {
        public var fileName: String

        public var contentType: String

        public var size: Int

        public var tags: [String]?

        public var params: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case fileName = "file_name"

            case contentType = "content_type"

            case size

            case tags

            case params
        }

        public init(contentType: String, fileName: String, params: [String: Any]? = nil, size: Int, tags: [String]? = nil) {
            self.fileName = fileName

            self.contentType = contentType

            self.size = size

            self.tags = tags

            self.params = params
        }

        public func duplicate() -> StartRequest {
            let dict = self.dictionary!
            let copy = StartRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fileName = try container.decode(String.self, forKey: .fileName)

            contentType = try container.decode(String.self, forKey: .contentType)

            size = try container.decode(Int.self, forKey: .size)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                params = try container.decode([String: Any].self, forKey: .params)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fileName, forKey: .fileName)

            try? container.encodeIfPresent(contentType, forKey: .contentType)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(params, forKey: .params)
        }
    }

    /*
         Model: CompleteResponse
         Used By: FileStorage
     */
    class CompleteResponse: Codable {
        public var id: String

        public var fileName: String

        public var filePath: String

        public var contentType: String

        public var namespace: String

        public var operation: String

        public var size: Int

        public var upload: Upload

        public var cdn: CDN

        public var success: Bool

        public var tags: [String]?

        public var createdOn: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case fileName = "file_name"

            case filePath = "file_path"

            case contentType = "content_type"

            case namespace

            case operation

            case size

            case upload

            case cdn

            case success

            case tags

            case createdOn = "created_on"

            case modifiedOn = "modified_on"
        }

        public init(cdn: CDN, contentType: String, createdOn: String, fileName: String, filePath: String, modifiedOn: String, namespace: String, operation: String, size: Int, success: Bool, tags: [String]? = nil, upload: Upload, id: String) {
            self.id = id

            self.fileName = fileName

            self.filePath = filePath

            self.contentType = contentType

            self.namespace = namespace

            self.operation = operation

            self.size = size

            self.upload = upload

            self.cdn = cdn

            self.success = success

            self.tags = tags

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn
        }

        public func duplicate() -> CompleteResponse {
            let dict = self.dictionary!
            let copy = CompleteResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            fileName = try container.decode(String.self, forKey: .fileName)

            filePath = try container.decode(String.self, forKey: .filePath)

            contentType = try container.decode(String.self, forKey: .contentType)

            namespace = try container.decode(String.self, forKey: .namespace)

            operation = try container.decode(String.self, forKey: .operation)

            size = try container.decode(Int.self, forKey: .size)

            upload = try container.decode(Upload.self, forKey: .upload)

            cdn = try container.decode(CDN.self, forKey: .cdn)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fileName, forKey: .fileName)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(contentType, forKey: .contentType)

            try? container.encodeIfPresent(namespace, forKey: .namespace)

            try? container.encodeIfPresent(operation, forKey: .operation)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(upload, forKey: .upload)

            try? container.encodeIfPresent(cdn, forKey: .cdn)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }

    /*
         Model: Opts
         Used By: FileStorage
     */
    class Opts: Codable {
        public var attempts: Int?

        public var timestamp: Int?

        public var delay: Int?

        public enum CodingKeys: String, CodingKey {
            case attempts

            case timestamp

            case delay
        }

        public init(attempts: Int? = nil, delay: Int? = nil, timestamp: Int? = nil) {
            self.attempts = attempts

            self.timestamp = timestamp

            self.delay = delay
        }

        public func duplicate() -> Opts {
            let dict = self.dictionary!
            let copy = Opts(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                attempts = try container.decode(Int.self, forKey: .attempts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timestamp = try container.decode(Int.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                delay = try container.decode(Int.self, forKey: .delay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attempts, forKey: .attempts)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(delay, forKey: .delay)
        }
    }

    /*
         Model: CopyFileTask
         Used By: FileStorage
     */
    class CopyFileTask: Codable {
        public var id: String

        public var name: String

        public var data: BulkRequest

        public var opts: Opts

        public var progress: Int

        public var delay: Int

        public var timestamp: Int

        public var attemptsMade: Int

        public var stacktrace: [String]?

        public var finishedOn: Int

        public var processedOn: Int

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case data

            case opts

            case progress

            case delay

            case timestamp

            case attemptsMade = "attempts_made"

            case stacktrace

            case finishedOn = "finished_on"

            case processedOn = "processed_on"
        }

        public init(attemptsMade: Int, data: BulkRequest, delay: Int, finishedOn: Int, id: String, name: String, opts: Opts, processedOn: Int, progress: Int, stacktrace: [String]? = nil, timestamp: Int) {
            self.id = id

            self.name = name

            self.data = data

            self.opts = opts

            self.progress = progress

            self.delay = delay

            self.timestamp = timestamp

            self.attemptsMade = attemptsMade

            self.stacktrace = stacktrace

            self.finishedOn = finishedOn

            self.processedOn = processedOn
        }

        public func duplicate() -> CopyFileTask {
            let dict = self.dictionary!
            let copy = CopyFileTask(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            name = try container.decode(String.self, forKey: .name)

            data = try container.decode(BulkRequest.self, forKey: .data)

            opts = try container.decode(Opts.self, forKey: .opts)

            progress = try container.decode(Int.self, forKey: .progress)

            delay = try container.decode(Int.self, forKey: .delay)

            timestamp = try container.decode(Int.self, forKey: .timestamp)

            attemptsMade = try container.decode(Int.self, forKey: .attemptsMade)

            do {
                stacktrace = try container.decode([String].self, forKey: .stacktrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            finishedOn = try container.decode(Int.self, forKey: .finishedOn)

            processedOn = try container.decode(Int.self, forKey: .processedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(opts, forKey: .opts)

            try? container.encodeIfPresent(progress, forKey: .progress)

            try? container.encodeIfPresent(delay, forKey: .delay)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(attemptsMade, forKey: .attemptsMade)

            try? container.encodeIfPresent(stacktrace, forKey: .stacktrace)

            try? container.encodeIfPresent(finishedOn, forKey: .finishedOn)

            try? container.encodeIfPresent(processedOn, forKey: .processedOn)
        }
    }

    /*
         Model: BulkResponse
         Used By: FileStorage
     */
    class BulkResponse: Codable {
        public var trackingUrl: String

        public var task: CopyFileTask

        public enum CodingKeys: String, CodingKey {
            case trackingUrl = "tracking_url"

            case task
        }

        public init(task: CopyFileTask, trackingUrl: String) {
            self.trackingUrl = trackingUrl

            self.task = task
        }

        public func duplicate() -> BulkResponse {
            let dict = self.dictionary!
            let copy = BulkResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            task = try container.decode(CopyFileTask.self, forKey: .task)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(task, forKey: .task)
        }
    }

    /*
         Model: ReqConfiguration
         Used By: FileStorage
     */
    class ReqConfiguration: Codable {
        public var concurrency: Int?

        public enum CodingKeys: String, CodingKey {
            case concurrency
        }

        public init(concurrency: Int? = nil) {
            self.concurrency = concurrency
        }

        public func duplicate() -> ReqConfiguration {
            let dict = self.dictionary!
            let copy = ReqConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                concurrency = try container.decode(Int.self, forKey: .concurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(concurrency, forKey: .concurrency)
        }
    }

    /*
         Model: Destination
         Used By: FileStorage
     */
    class Destination: Codable {
        public var namespace: String

        public var rewrite: String

        public var basepath: String?

        public enum CodingKeys: String, CodingKey {
            case namespace

            case rewrite

            case basepath
        }

        public init(basepath: String? = nil, namespace: String, rewrite: String) {
            self.namespace = namespace

            self.rewrite = rewrite

            self.basepath = basepath
        }

        public func duplicate() -> Destination {
            let dict = self.dictionary!
            let copy = Destination(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            namespace = try container.decode(String.self, forKey: .namespace)

            rewrite = try container.decode(String.self, forKey: .rewrite)

            do {
                basepath = try container.decode(String.self, forKey: .basepath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(namespace, forKey: .namespace)

            try? container.encodeIfPresent(rewrite, forKey: .rewrite)

            try? container.encodeIfPresent(basepath, forKey: .basepath)
        }
    }

    /*
         Model: BulkRequest
         Used By: FileStorage
     */
    class BulkRequest: Codable {
        public var urls: [String]

        public var destination: Destination

        public var configuration: ReqConfiguration?

        public enum CodingKeys: String, CodingKey {
            case urls

            case destination

            case configuration
        }

        public init(configuration: ReqConfiguration? = nil, destination: Destination, urls: [String]) {
            self.urls = urls

            self.destination = destination

            self.configuration = configuration
        }

        public func duplicate() -> BulkRequest {
            let dict = self.dictionary!
            let copy = BulkRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            urls = try container.decode([String].self, forKey: .urls)

            destination = try container.decode(Destination.self, forKey: .destination)

            do {
                configuration = try container.decode(ReqConfiguration.self, forKey: .configuration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(urls, forKey: .urls)

            try? container.encodeIfPresent(destination, forKey: .destination)

            try? container.encodeIfPresent(configuration, forKey: .configuration)
        }
    }

    /*
         Model: Urls
         Used By: FileStorage
     */
    class Urls: Codable {
        public var url: String

        public var signedUrl: String

        public var expiry: Int

        public enum CodingKeys: String, CodingKey {
            case url

            case signedUrl = "signed_url"

            case expiry
        }

        public init(expiry: Int, signedUrl: String, url: String) {
            self.url = url

            self.signedUrl = signedUrl

            self.expiry = expiry
        }

        public func duplicate() -> Urls {
            let dict = self.dictionary!
            let copy = Urls(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            signedUrl = try container.decode(String.self, forKey: .signedUrl)

            expiry = try container.decode(Int.self, forKey: .expiry)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(signedUrl, forKey: .signedUrl)

            try? container.encodeIfPresent(expiry, forKey: .expiry)
        }
    }

    /*
         Model: SignUrlResponse
         Used By: FileStorage
     */
    class SignUrlResponse: Codable {
        public var urls: [Urls]

        public enum CodingKeys: String, CodingKey {
            case urls
        }

        public init(urls: [Urls]) {
            self.urls = urls
        }

        public func duplicate() -> SignUrlResponse {
            let dict = self.dictionary!
            let copy = SignUrlResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            urls = try container.decode([Urls].self, forKey: .urls)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(urls, forKey: .urls)
        }
    }

    /*
         Model: SignUrlRequest
         Used By: FileStorage
     */
    class SignUrlRequest: Codable {
        public var expiry: Int

        public var urls: [String]

        public enum CodingKeys: String, CodingKey {
            case expiry

            case urls
        }

        public init(expiry: Int, urls: [String]) {
            self.expiry = expiry

            self.urls = urls
        }

        public func duplicate() -> SignUrlRequest {
            let dict = self.dictionary!
            let copy = SignUrlRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            expiry = try container.decode(Int.self, forKey: .expiry)

            urls = try container.decode([String].self, forKey: .urls)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expiry, forKey: .expiry)

            try? container.encodeIfPresent(urls, forKey: .urls)
        }
    }

    /*
         Model: DbRecord
         Used By: FileStorage
     */
    class DbRecord: Codable {
        public var success: Bool

        public var tags: [String]

        public var id: String

        public var fileName: String

        public var operation: String?

        public var namespace: String

        public var contentType: String

        public var filePath: String

        public var upload: Upload

        public var cdn: CDN

        public var createdOn: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case success

            case tags

            case id = "_id"

            case fileName = "file_name"

            case operation

            case namespace

            case contentType = "content_type"

            case filePath = "file_path"

            case upload

            case cdn

            case createdOn = "created_on"

            case modifiedOn = "modified_on"
        }

        public init(cdn: CDN, contentType: String, createdOn: String, fileName: String, filePath: String, modifiedOn: String, namespace: String, operation: String? = nil, success: Bool, tags: [String], upload: Upload, id: String) {
            self.success = success

            self.tags = tags

            self.id = id

            self.fileName = fileName

            self.operation = operation

            self.namespace = namespace

            self.contentType = contentType

            self.filePath = filePath

            self.upload = upload

            self.cdn = cdn

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn
        }

        public func duplicate() -> DbRecord {
            let dict = self.dictionary!
            let copy = DbRecord(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            tags = try container.decode([String].self, forKey: .tags)

            id = try container.decode(String.self, forKey: .id)

            fileName = try container.decode(String.self, forKey: .fileName)

            do {
                operation = try container.decode(String.self, forKey: .operation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            namespace = try container.decode(String.self, forKey: .namespace)

            contentType = try container.decode(String.self, forKey: .contentType)

            filePath = try container.decode(String.self, forKey: .filePath)

            upload = try container.decode(Upload.self, forKey: .upload)

            cdn = try container.decode(CDN.self, forKey: .cdn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fileName, forKey: .fileName)

            try? container.encodeIfPresent(operation, forKey: .operation)

            try? container.encodeIfPresent(namespace, forKey: .namespace)

            try? container.encodeIfPresent(contentType, forKey: .contentType)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(upload, forKey: .upload)

            try? container.encodeIfPresent(cdn, forKey: .cdn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }

    /*
         Model: BrowseResponse
         Used By: FileStorage
     */
    class BrowseResponse: Codable {
        public var items: [DbRecord]

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [DbRecord], page: Page) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> BrowseResponse {
            let dict = self.dictionary!
            let copy = BrowseResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([DbRecord].self, forKey: .items)

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
