

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateInventoryOrderConfig
         Used By: Order
     */

    class AffiliateInventoryOrderConfig: Codable {
        public var forceReassignment: Bool?

        public enum CodingKeys: String, CodingKey {
            case forceReassignment = "force_reassignment"
        }

        public init(forceReassignment: Bool? = nil) {
            self.forceReassignment = forceReassignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                forceReassignment = try container.decode(Bool.self, forKey: .forceReassignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(forceReassignment, forKey: .forceReassignment)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateInventoryOrderConfig
         Used By: Order
     */

    class AffiliateInventoryOrderConfig: Codable {
        public var forceReassignment: Bool?

        public enum CodingKeys: String, CodingKey {
            case forceReassignment = "force_reassignment"
        }

        public init(forceReassignment: Bool? = nil) {
            self.forceReassignment = forceReassignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                forceReassignment = try container.decode(Bool.self, forKey: .forceReassignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(forceReassignment, forKey: .forceReassignment)
        }
    }
}
