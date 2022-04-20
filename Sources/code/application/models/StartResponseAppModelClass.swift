

import Foundation
public extension ApplicationClient {
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
}
