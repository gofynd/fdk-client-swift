

import Foundation
public extension PlatformClient {
    /*
         Model: IntegrationMeta
         Used By: Configuration
     */

    class IntegrationMeta: Codable {
        public var isPublic: Bool?

        public var id: String?

        public var name: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case isPublic = "is_public"

            case id = "_id"

            case name

            case value
        }

        public init(isPublic: Bool? = nil, name: String? = nil, value: String? = nil, id: String? = nil) {
            self.isPublic = isPublic

            self.id = id

            self.name = name

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isPublic = try container.decode(Bool.self, forKey: .isPublic)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isPublic, forKey: .isPublic)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
