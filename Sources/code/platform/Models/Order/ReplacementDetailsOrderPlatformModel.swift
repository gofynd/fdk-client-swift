

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ReplacementDetails
         Used By: Order
     */

    class ReplacementDetails: Codable {
        public var originalAffiliateOrderId: String?

        public var replacementType: String?

        public enum CodingKeys: String, CodingKey {
            case originalAffiliateOrderId = "original_affiliate_order_id"

            case replacementType = "replacement_type"
        }

        public init(originalAffiliateOrderId: String? = nil, replacementType: String? = nil) {
            self.originalAffiliateOrderId = originalAffiliateOrderId

            self.replacementType = replacementType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                originalAffiliateOrderId = try container.decode(String.self, forKey: .originalAffiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                replacementType = try container.decode(String.self, forKey: .replacementType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(originalAffiliateOrderId, forKey: .originalAffiliateOrderId)

            try? container.encode(replacementType, forKey: .replacementType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ReplacementDetails
         Used By: Order
     */

    class ReplacementDetails: Codable {
        public var originalAffiliateOrderId: String?

        public var replacementType: String?

        public enum CodingKeys: String, CodingKey {
            case originalAffiliateOrderId = "original_affiliate_order_id"

            case replacementType = "replacement_type"
        }

        public init(originalAffiliateOrderId: String? = nil, replacementType: String? = nil) {
            self.originalAffiliateOrderId = originalAffiliateOrderId

            self.replacementType = replacementType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                originalAffiliateOrderId = try container.decode(String.self, forKey: .originalAffiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                replacementType = try container.decode(String.self, forKey: .replacementType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(originalAffiliateOrderId, forKey: .originalAffiliateOrderId)

            try? container.encode(replacementType, forKey: .replacementType)
        }
    }
}
