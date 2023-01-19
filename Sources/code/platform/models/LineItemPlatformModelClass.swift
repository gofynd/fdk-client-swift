

import Foundation
public extension PlatformClient {
    /*
         Model: LineItem
         Used By: Order
     */

    class LineItem: Codable {
        public var meta: [String: Any]?

        public var quantity: Int?

        public var externalLineId: String?

        public var customMessasge: String?

        public var charges: [Charge]

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case quantity

            case externalLineId = "external_line_id"

            case customMessasge = "custom_messasge"

            case charges

            case sellerIdentifier = "seller_identifier"
        }

        public init(charges: [Charge], customMessasge: String? = nil, externalLineId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, sellerIdentifier: String) {
            self.meta = meta

            self.quantity = quantity

            self.externalLineId = externalLineId

            self.customMessasge = customMessasge

            self.charges = charges

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                externalLineId = try container.decode(String.self, forKey: .externalLineId)

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

            charges = try container.decode([Charge].self, forKey: .charges)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(externalLineId, forKey: .externalLineId)

            try? container.encodeIfPresent(customMessasge, forKey: .customMessasge)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
