

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: metaObj
         Used By: Communication
     */

    class metaObj: Codable {
        public var type: String?

        public var isSystem: Bool?

        public var template: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case isSystem = "is_system"

            case template
        }

        public init(isSystem: Bool? = nil, template: String? = nil, type: String? = nil) {
            self.type = type

            self.isSystem = isSystem

            self.template = template
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
                isSystem = try container.decode(Bool.self, forKey: .isSystem)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                template = try container.decode(String.self, forKey: .template)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isSystem, forKey: .isSystem)

            try? container.encodeIfPresent(template, forKey: .template)
        }
    }
}

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: metaObj
         Used By: Communication
     */

    class metaObj: Codable {
        public var type: String?

        public var isSystem: Bool?

        public var template: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case isSystem = "is_system"

            case template
        }

        public init(isSystem: Bool? = nil, template: String? = nil, type: String? = nil) {
            self.type = type

            self.isSystem = isSystem

            self.template = template
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
                isSystem = try container.decode(Bool.self, forKey: .isSystem)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                template = try container.decode(String.self, forKey: .template)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isSystem, forKey: .isSystem)

            try? container.encodeIfPresent(template, forKey: .template)
        }
    }
}
