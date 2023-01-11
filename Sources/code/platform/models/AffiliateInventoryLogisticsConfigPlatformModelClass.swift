

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateInventoryLogisticsConfig
         Used By: Order
     */

    class AffiliateInventoryLogisticsConfig: Codable {
        public var dpAssignment: Bool?

        public enum CodingKeys: String, CodingKey {
            case dpAssignment = "dp_assignment"
        }

        public init(dpAssignment: Bool? = nil) {
            self.dpAssignment = dpAssignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)
        }
    }
}
