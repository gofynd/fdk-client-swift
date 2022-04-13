import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: LoyaltyPoints
         Used By: Cart
     */
    class LoyaltyPoints: Codable {
        public var isApplied: Bool?

        public var description: String?

        public var applicable: Double?

        public var total: Double?

        public enum CodingKeys: String, CodingKey {
            case isApplied = "is_applied"

            case description

            case applicable

            case total
        }

        public init(applicable: Double? = nil, description: String? = nil, isApplied: Bool? = nil, total: Double? = nil) {
            self.isApplied = isApplied

            self.description = description

            self.applicable = applicable

            self.total = total
        }

        public func duplicate() -> LoyaltyPoints {
            let dict = self.dictionary!
            let copy = LoyaltyPoints(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                applicable = try container.decode(Double.self, forKey: .applicable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Double.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(applicable, forKey: .applicable)

            try? container.encodeIfPresent(total, forKey: .total)
        }
    }
}
