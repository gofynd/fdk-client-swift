

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PlatformShipmentReasonsResponse
         Used By: Order
     */

    class PlatformShipmentReasonsResponse: Codable {
        public var reasons: [Reason]?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case reasons

            case success
        }

        public init(reasons: [Reason]? = nil, success: Bool? = nil) {
            self.reasons = reasons

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reasons = try container.decode([Reason].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PlatformShipmentReasonsResponse
         Used By: Order
     */

    class PlatformShipmentReasonsResponse: Codable {
        public var reasons: [Reason]?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case reasons

            case success
        }

        public init(reasons: [Reason]? = nil, success: Bool? = nil) {
            self.reasons = reasons

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reasons = try container.decode([Reason].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
