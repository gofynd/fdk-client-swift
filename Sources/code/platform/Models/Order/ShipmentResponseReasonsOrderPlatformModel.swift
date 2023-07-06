

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentResponseReasons
         Used By: Order
     */

    class ShipmentResponseReasons: Codable {
        public var reason: String?

        public var reasonId: Int?

        public enum CodingKeys: String, CodingKey {
            case reason

            case reasonId = "reason_id"
        }

        public init(reason: String? = nil, reasonId: Int? = nil) {
            self.reason = reason

            self.reasonId = reasonId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasonId = try container.decode(Int.self, forKey: .reasonId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encodeIfPresent(reasonId, forKey: .reasonId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentResponseReasons
         Used By: Order
     */

    class ShipmentResponseReasons: Codable {
        public var reason: String?

        public var reasonId: Int?

        public enum CodingKeys: String, CodingKey {
            case reason

            case reasonId = "reason_id"
        }

        public init(reason: String? = nil, reasonId: Int? = nil) {
            self.reason = reason

            self.reasonId = reasonId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasonId = try container.decode(Int.self, forKey: .reasonId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encodeIfPresent(reasonId, forKey: .reasonId)
        }
    }
}
