

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ProcessManifestItemResponse
         Used By: Order
     */

    class ProcessManifestItemResponse: Codable {
        public var items: ProcessManifestResponse?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: ProcessManifestResponse? = nil) {
            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode(ProcessManifestResponse.self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ProcessManifestItemResponse
         Used By: Order
     */

    class ProcessManifestItemResponse: Codable {
        public var items: ProcessManifestResponse?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: ProcessManifestResponse? = nil) {
            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode(ProcessManifestResponse.self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
