

import Foundation
public extension PlatformClient {
    /*
         Model: LineItem
         Used By: Order
     */

    class LineItem: Codable {
        public var sellerIdentifier: String

        public var externalLineId: String?

        public var charges: [Charge]

        public var quantity: Int?

        public var meta: [String: Any]?

        public var customMessasge: String?

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case externalLineId = "external_line_id"

            case charges

            case quantity

            case meta

            case customMessasge = "custom_messasge"
        }

        public init(charges: [Charge], customMessasge: String? = nil, externalLineId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, sellerIdentifier: String) {
            self.sellerIdentifier = sellerIdentifier

            self.externalLineId = externalLineId

            self.charges = charges

            self.quantity = quantity

            self.meta = meta

            self.customMessasge = customMessasge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                externalLineId = try container.decode(String.self, forKey: .externalLineId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            charges = try container.decode([Charge].self, forKey: .charges)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMessasge = try container.decode(String.self, forKey: .customMessasge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(externalLineId, forKey: .externalLineId)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(customMessasge, forKey: .customMessasge)
        }
    }
}
