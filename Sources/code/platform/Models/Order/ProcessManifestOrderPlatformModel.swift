

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ProcessManifest
         Used By: Order
     */

    class ProcessManifest: Codable {
        public var action: String

        public var filters: FiltersRequest

        public var uniqueId: String

        public var manifestId: String?

        public enum CodingKeys: String, CodingKey {
            case action

            case filters

            case uniqueId = "unique_id"

            case manifestId = "manifest_id"
        }

        public init(action: String, filters: FiltersRequest, manifestId: String? = nil, uniqueId: String) {
            self.action = action

            self.filters = filters

            self.uniqueId = uniqueId

            self.manifestId = manifestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            action = try container.decode(String.self, forKey: .action)

            filters = try container.decode(FiltersRequest.self, forKey: .filters)

            uniqueId = try container.decode(String.self, forKey: .uniqueId)

            do {
                manifestId = try container.decode(String.self, forKey: .manifestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ProcessManifest
         Used By: Order
     */

    class ProcessManifest: Codable {
        public var action: String

        public var filters: FiltersRequest

        public var uniqueId: String

        public var manifestId: String?

        public enum CodingKeys: String, CodingKey {
            case action

            case filters

            case uniqueId = "unique_id"

            case manifestId = "manifest_id"
        }

        public init(action: String, filters: FiltersRequest, manifestId: String? = nil, uniqueId: String) {
            self.action = action

            self.filters = filters

            self.uniqueId = uniqueId

            self.manifestId = manifestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            action = try container.decode(String.self, forKey: .action)

            filters = try container.decode(FiltersRequest.self, forKey: .filters)

            uniqueId = try container.decode(String.self, forKey: .uniqueId)

            do {
                manifestId = try container.decode(String.self, forKey: .manifestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
        }
    }
}
