

import Foundation
public extension PlatformClient {
    /*
         Model: DataLoaderSchema
         Used By: Content
     */

    class DataLoaderSchema: Codable {
        public var name: String?

        public var service: String?

        public var operationId: String?

        public var type: String?

        public var url: String?

        public var content: String?

        public var source: DataLoaderSourceSchema?

        public enum CodingKeys: String, CodingKey {
            case name

            case service

            case operationId = "operation_id"

            case type

            case url

            case content

            case source = "__source"
        }

        public init(content: String? = nil, name: String? = nil, operationId: String? = nil, service: String? = nil, type: String? = nil, url: String? = nil, source: DataLoaderSourceSchema? = nil) {
            self.name = name

            self.service = service

            self.operationId = operationId

            self.type = type

            self.url = url

            self.content = content

            self.source = source
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                service = try container.decode(String.self, forKey: .service)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operationId = try container.decode(String.self, forKey: .operationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                content = try container.decode(String.self, forKey: .content)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(DataLoaderSourceSchema.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(service, forKey: .service)

            try? container.encodeIfPresent(operationId, forKey: .operationId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }
}
