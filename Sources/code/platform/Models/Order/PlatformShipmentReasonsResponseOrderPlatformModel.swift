

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PlatformShipmentReasonsResponse
         Used By: Order
     */

    class PlatformShipmentReasonsResponse: Codable {
        public var success: Bool?

        public var reasons: [Reason]?

        public enum CodingKeys: String, CodingKey {
            case success

            case reasons
        }

        public init(reasons: [Reason]? = nil, success: Bool? = nil) {
            self.success = success

            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasons = try container.decode([Reason].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PlatformShipmentReasonsResponse
         Used By: Order
     */

    class PlatformShipmentReasonsResponse: Codable {
        public var success: Bool?

        public var reasons: [Reason]?

        public enum CodingKeys: String, CodingKey {
            case success

            case reasons
        }

        public init(reasons: [Reason]? = nil, success: Bool? = nil) {
            self.success = success

            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasons = try container.decode([Reason].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}
