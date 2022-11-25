

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentReasonsResponse
         Used By: Order
     */
    class ShipmentReasonsResponse: Codable {
        public var success: Bool?

        public var reasons: [ReasonsResponse]?

        public enum CodingKeys: String, CodingKey {
            case success

            case reasons
        }

        public init(reasons: [ReasonsResponse]? = nil, success: Bool? = nil) {
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
                reasons = try container.decode([ReasonsResponse].self, forKey: .reasons)

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
