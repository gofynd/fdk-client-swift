

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ProcessManifest
         Used By: Order
     */

    class ProcessManifest: Codable {
        public var manifestId: String?

        public var uniqueId: String

        public var action: String

        public var filters: FiltersRequest

        public enum CodingKeys: String, CodingKey {
            case manifestId = "manifest_id"

            case uniqueId = "unique_id"

            case action

            case filters
        }

        public init(action: String, filters: FiltersRequest, manifestId: String? = nil, uniqueId: String) {
            self.manifestId = manifestId

            self.uniqueId = uniqueId

            self.action = action

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                manifestId = try container.decode(String.self, forKey: .manifestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uniqueId = try container.decode(String.self, forKey: .uniqueId)

            action = try container.decode(String.self, forKey: .action)

            filters = try container.decode(FiltersRequest.self, forKey: .filters)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ProcessManifest
         Used By: Order
     */

    class ProcessManifest: Codable {
        public var manifestId: String?

        public var uniqueId: String

        public var action: String

        public var filters: FiltersRequest

        public enum CodingKeys: String, CodingKey {
            case manifestId = "manifest_id"

            case uniqueId = "unique_id"

            case action

            case filters
        }

        public init(action: String, filters: FiltersRequest, manifestId: String? = nil, uniqueId: String) {
            self.manifestId = manifestId

            self.uniqueId = uniqueId

            self.action = action

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                manifestId = try container.decode(String.self, forKey: .manifestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uniqueId = try container.decode(String.self, forKey: .uniqueId)

            action = try container.decode(String.self, forKey: .action)

            filters = try container.decode(FiltersRequest.self, forKey: .filters)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
