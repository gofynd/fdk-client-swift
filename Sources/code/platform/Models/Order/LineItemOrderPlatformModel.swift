

import Foundation

public extension PlatformClient.Order {
    /*
         Model: LineItem
         Used By: Order
     */

    class LineItem: Codable {
        public var charges: [Charge]?

        public var meta: [String: Any]?

        public var externalLineId: String?

        public var sellerIdentifier: String

        public var quantity: Int?

        public var customMessasge: String?

        public enum CodingKeys: String, CodingKey {
            case charges

            case meta

            case externalLineId = "external_line_id"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case customMessasge = "custom_messasge"
        }

        public init(charges: [Charge]? = nil, customMessasge: String? = nil, externalLineId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, sellerIdentifier: String) {
            self.charges = charges

            self.meta = meta

            self.externalLineId = externalLineId

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.customMessasge = customMessasge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                charges = try container.decode([Charge].self, forKey: .charges)

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
                externalLineId = try container.decode(String.self, forKey: .externalLineId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

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

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(externalLineId, forKey: .externalLineId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(customMessasge, forKey: .customMessasge)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: LineItem
         Used By: Order
     */

    class LineItem: Codable {
        public var charges: [Charge]?

        public var meta: [String: Any]?

        public var externalLineId: String?

        public var sellerIdentifier: String

        public var quantity: Int?

        public var customMessasge: String?

        public enum CodingKeys: String, CodingKey {
            case charges

            case meta

            case externalLineId = "external_line_id"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case customMessasge = "custom_messasge"
        }

        public init(charges: [Charge]? = nil, customMessasge: String? = nil, externalLineId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, sellerIdentifier: String) {
            self.charges = charges

            self.meta = meta

            self.externalLineId = externalLineId

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.customMessasge = customMessasge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                charges = try container.decode([Charge].self, forKey: .charges)

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
                externalLineId = try container.decode(String.self, forKey: .externalLineId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

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

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(externalLineId, forKey: .externalLineId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(customMessasge, forKey: .customMessasge)
        }
    }
}
