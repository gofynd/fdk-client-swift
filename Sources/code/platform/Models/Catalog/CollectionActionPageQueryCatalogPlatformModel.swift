

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CollectionActionPageQuery
         Used By: Catalog
     */

    class CollectionActionPageQuery: Codable {
        public var op: String?

        public var value: [String]?

        public var attribute: String?

        public enum CodingKeys: String, CodingKey {
            case op

            case value

            case attribute
        }

        public init(attribute: String? = nil, op: String? = nil, value: [String]? = nil) {
            self.op = op

            self.value = value

            self.attribute = attribute
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                op = try container.decode(String.self, forKey: .op)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode([String].self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attribute = try container.decode(String.self, forKey: .attribute)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(op, forKey: .op)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(attribute, forKey: .attribute)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CollectionActionPageQuery
         Used By: Catalog
     */

    class CollectionActionPageQuery: Codable {
        public var op: String?

        public var value: [String]?

        public var attribute: String?

        public enum CodingKeys: String, CodingKey {
            case op

            case value

            case attribute
        }

        public init(attribute: String? = nil, op: String? = nil, value: [String]? = nil) {
            self.op = op

            self.value = value

            self.attribute = attribute
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                op = try container.decode(String.self, forKey: .op)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode([String].self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attribute = try container.decode(String.self, forKey: .attribute)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(op, forKey: .op)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(attribute, forKey: .attribute)
        }
    }
}
