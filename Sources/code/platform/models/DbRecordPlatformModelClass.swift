

import Foundation
public extension PlatformClient {
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
}
