

import Foundation
public extension PlatformClient {
    /*
         Model: LogMeta
         Used By: Communication
     */

    class LogMeta: Codable {
        public var type: String?

        public var identifier: String?

        public var key: String?

        public var offset: String?

        public var partition: String?

        public var topic: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case identifier

            case key

            case offset

            case partition

            case topic
        }

        public init(identifier: String? = nil, key: String? = nil, offset: String? = nil, partition: String? = nil, topic: String? = nil, type: String? = nil) {
            self.type = type

            self.identifier = identifier

            self.key = key

            self.offset = offset

            self.partition = partition

            self.topic = topic
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                offset = try container.decode(String.self, forKey: .offset)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                partition = try container.decode(String.self, forKey: .partition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                topic = try container.decode(String.self, forKey: .topic)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(offset, forKey: .offset)

            try? container.encodeIfPresent(partition, forKey: .partition)

            try? container.encodeIfPresent(topic, forKey: .topic)
        }
    }
}
