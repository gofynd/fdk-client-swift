

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ProcessManifest
         Used By: Order
     */

    class ProcessManifest: Codable {
        public var filters: FiltersRequest

        public var action: String

        public var manifestId: String?

        public var uniqueId: String

        public enum CodingKeys: String, CodingKey {
            case filters

            case action

            case manifestId = "manifest_id"

            case uniqueId = "unique_id"
        }

        public init(action: String, filters: FiltersRequest, manifestId: String? = nil, uniqueId: String) {
            self.filters = filters

            self.action = action

            self.manifestId = manifestId

            self.uniqueId = uniqueId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filters = try container.decode(FiltersRequest.self, forKey: .filters)

            action = try container.decode(String.self, forKey: .action)

            do {
                manifestId = try container.decode(String.self, forKey: .manifestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uniqueId = try container.decode(String.self, forKey: .uniqueId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ProcessManifest
         Used By: Order
     */

    class ProcessManifest: Codable {
        public var filters: FiltersRequest

        public var action: String

        public var manifestId: String?

        public var uniqueId: String

        public enum CodingKeys: String, CodingKey {
            case filters

            case action

            case manifestId = "manifest_id"

            case uniqueId = "unique_id"
        }

        public init(action: String, filters: FiltersRequest, manifestId: String? = nil, uniqueId: String) {
            self.filters = filters

            self.action = action

            self.manifestId = manifestId

            self.uniqueId = uniqueId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filters = try container.decode(FiltersRequest.self, forKey: .filters)

            action = try container.decode(String.self, forKey: .action)

            do {
                manifestId = try container.decode(String.self, forKey: .manifestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uniqueId = try container.decode(String.self, forKey: .uniqueId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
        }
    }
}
