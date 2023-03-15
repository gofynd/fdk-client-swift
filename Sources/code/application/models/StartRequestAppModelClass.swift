

import Foundation
public extension ApplicationClient {
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
}
