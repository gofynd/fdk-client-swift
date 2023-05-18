

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FileResponse
         Used By: Order
     */

    class FileResponse: Codable {
        public var size: Int?

        public var operation: String?

        public var tags: [String]?

        public var fileName: String?

        public var method: String?

        public var contentType: String?

        public var cdn: URL?

        public var upload: FileUploadResponse?

        public var namespace: String?

        public var filePath: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case operation

            case tags

            case fileName = "file_name"

            case method

            case contentType = "content_type"

            case cdn

            case upload

            case namespace

            case filePath = "file_path"
        }

        public init(cdn: URL? = nil, contentType: String? = nil, fileName: String? = nil, filePath: String? = nil, method: String? = nil, namespace: String? = nil, operation: String? = nil, size: Int? = nil, tags: [String]? = nil, upload: FileUploadResponse? = nil) {
            self.size = size

            self.operation = operation

            self.tags = tags

            self.fileName = fileName

            self.method = method

            self.contentType = contentType

            self.cdn = cdn

            self.upload = upload

            self.namespace = namespace

            self.filePath = filePath
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operation = try container.decode(String.self, forKey: .operation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fileName = try container.decode(String.self, forKey: .fileName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                method = try container.decode(String.self, forKey: .method)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contentType = try container.decode(String.self, forKey: .contentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cdn = try container.decode(URL.self, forKey: .cdn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upload = try container.decode(FileUploadResponse.self, forKey: .upload)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                namespace = try container.decode(String.self, forKey: .namespace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(operation, forKey: .operation)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(fileName, forKey: .fileName)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(contentType, forKey: .contentType)

            try? container.encodeIfPresent(cdn, forKey: .cdn)

            try? container.encodeIfPresent(upload, forKey: .upload)

            try? container.encodeIfPresent(namespace, forKey: .namespace)

            try? container.encodeIfPresent(filePath, forKey: .filePath)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FileResponse
         Used By: Order
     */

    class FileResponse: Codable {
        public var size: Int?

        public var operation: String?

        public var tags: [String]?

        public var fileName: String?

        public var method: String?

        public var contentType: String?

        public var cdn: URL?

        public var upload: FileUploadResponse?

        public var namespace: String?

        public var filePath: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case operation

            case tags

            case fileName = "file_name"

            case method

            case contentType = "content_type"

            case cdn

            case upload

            case namespace

            case filePath = "file_path"
        }

        public init(cdn: URL? = nil, contentType: String? = nil, fileName: String? = nil, filePath: String? = nil, method: String? = nil, namespace: String? = nil, operation: String? = nil, size: Int? = nil, tags: [String]? = nil, upload: FileUploadResponse? = nil) {
            self.size = size

            self.operation = operation

            self.tags = tags

            self.fileName = fileName

            self.method = method

            self.contentType = contentType

            self.cdn = cdn

            self.upload = upload

            self.namespace = namespace

            self.filePath = filePath
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operation = try container.decode(String.self, forKey: .operation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fileName = try container.decode(String.self, forKey: .fileName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                method = try container.decode(String.self, forKey: .method)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contentType = try container.decode(String.self, forKey: .contentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cdn = try container.decode(URL.self, forKey: .cdn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upload = try container.decode(FileUploadResponse.self, forKey: .upload)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                namespace = try container.decode(String.self, forKey: .namespace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(operation, forKey: .operation)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(fileName, forKey: .fileName)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(contentType, forKey: .contentType)

            try? container.encodeIfPresent(cdn, forKey: .cdn)

            try? container.encodeIfPresent(upload, forKey: .upload)

            try? container.encodeIfPresent(namespace, forKey: .namespace)

            try? container.encodeIfPresent(filePath, forKey: .filePath)
        }
    }
}
