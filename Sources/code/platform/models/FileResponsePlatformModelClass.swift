

import Foundation
public extension PlatformClient {
    /*
         Model: FileResponse
         Used By: Order
     */

    class FileResponse: Codable {
        public var namespace: String?

        public var fileName: String?

        public var filePath: String?

        public var upload: FileUploadResponse?

        public var cdn: URL?

        public var tags: [String]?

        public var operation: String?

        public var contentType: String?

        public var size: Int?

        public var method: String?

        public enum CodingKeys: String, CodingKey {
            case namespace

            case fileName = "file_name"

            case filePath = "file_path"

            case upload

            case cdn

            case tags

            case operation

            case contentType = "content_type"

            case size

            case method
        }

        public init(cdn: URL? = nil, contentType: String? = nil, fileName: String? = nil, filePath: String? = nil, method: String? = nil, namespace: String? = nil, operation: String? = nil, size: Int? = nil, tags: [String]? = nil, upload: FileUploadResponse? = nil) {
            self.namespace = namespace

            self.fileName = fileName

            self.filePath = filePath

            self.upload = upload

            self.cdn = cdn

            self.tags = tags

            self.operation = operation

            self.contentType = contentType

            self.size = size

            self.method = method
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                namespace = try container.decode(String.self, forKey: .namespace)

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
                filePath = try container.decode(String.self, forKey: .filePath)

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
                cdn = try container.decode(URL.self, forKey: .cdn)

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
                operation = try container.decode(String.self, forKey: .operation)

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
                size = try container.decode(Int.self, forKey: .size)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(namespace, forKey: .namespace)

            try? container.encodeIfPresent(fileName, forKey: .fileName)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(upload, forKey: .upload)

            try? container.encodeIfPresent(cdn, forKey: .cdn)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(operation, forKey: .operation)

            try? container.encodeIfPresent(contentType, forKey: .contentType)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(method, forKey: .method)
        }
    }
}
