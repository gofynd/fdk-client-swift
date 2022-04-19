import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: LoyaltyPoints
         Used By: Cart
     */

    class LoyaltyPoints: Codable {
        public var total: Double?

        public var applicable: Double?

        public var isApplied: Bool?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case total

            case applicable

            case isApplied = "is_applied"

            case description
        }

        public init(applicable: Double?, description: String?, isApplied: Bool?, total: Double?) {
            self.total = total

            self.applicable = applicable

            self.isApplied = isApplied

            self.description = description
        }

        public func duplicate() -> LoyaltyPoints {
            let dict = self.dictionary!
            let copy = LoyaltyPoints(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                total = try container.decode(Double.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicable = try container.decode(Double.self, forKey: .applicable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isApplied = try container.decode(Bool.self, forKey: .isApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(applicable, forKey: .applicable)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
