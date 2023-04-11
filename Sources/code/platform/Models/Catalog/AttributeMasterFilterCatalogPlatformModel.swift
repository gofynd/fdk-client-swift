

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AttributeMasterFilter
         Used By: Catalog
     */

    class AttributeMasterFilter: Codable {
        public var indexing: Bool

        public var dependsOn: [String]?

        public var priority: Int?

        public enum CodingKeys: String, CodingKey {
            case indexing

            case dependsOn = "depends_on"

            case priority
        }

        public init(dependsOn: [String]? = nil, indexing: Bool, priority: Int? = nil) {
            self.indexing = indexing

            self.dependsOn = dependsOn

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            indexing = try container.decode(Bool.self, forKey: .indexing)

            do {
                dependsOn = try container.decode([String].self, forKey: .dependsOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(indexing, forKey: .indexing)

            try? container.encodeIfPresent(dependsOn, forKey: .dependsOn)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AttributeMasterFilter
         Used By: Catalog
     */

    class AttributeMasterFilter: Codable {
        public var indexing: Bool

        public var dependsOn: [String]?

        public var priority: Int?

        public enum CodingKeys: String, CodingKey {
            case indexing

            case dependsOn = "depends_on"

            case priority
        }

        public init(dependsOn: [String]? = nil, indexing: Bool, priority: Int? = nil) {
            self.indexing = indexing

            self.dependsOn = dependsOn

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            indexing = try container.decode(Bool.self, forKey: .indexing)

            do {
                dependsOn = try container.decode([String].self, forKey: .dependsOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(indexing, forKey: .indexing)

            try? container.encodeIfPresent(dependsOn, forKey: .dependsOn)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}
