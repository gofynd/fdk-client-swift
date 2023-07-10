

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagMeta
         Used By: Order
     */

    class BagMeta: Codable {
        public var partialCanRet: Bool?

        public var extraMeta: [String: Any]?

        public var customJson: [String: Any]?

        public var customMessage: String?

        public var giftCard: GiftCard?

        public var docketNumber: String?

        public var b2BPoDetails: B2BPODetails?

        public var groupId: String?

        public enum CodingKeys: String, CodingKey {
            case partialCanRet = "partial_can_ret"

            case extraMeta = "extra_meta"

            case customJson = "custom_json"

            case customMessage = "custom_message"

            case giftCard = "gift_card"

            case docketNumber = "docket_number"

            case b2BPoDetails = "b2b_po_details"

            case groupId = "group_id"
        }

        public init(b2BPoDetails: B2BPODetails? = nil, customJson: [String: Any]? = nil, customMessage: String? = nil, docketNumber: String? = nil, extraMeta: [String: Any]? = nil, giftCard: GiftCard? = nil, groupId: String? = nil, partialCanRet: Bool? = nil) {
            self.partialCanRet = partialCanRet

            self.extraMeta = extraMeta

            self.customJson = customJson

            self.customMessage = customMessage

            self.giftCard = giftCard

            self.docketNumber = docketNumber

            self.b2BPoDetails = b2BPoDetails

            self.groupId = groupId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                partialCanRet = try container.decode(Bool.self, forKey: .partialCanRet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMessage = try container.decode(String.self, forKey: .customMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                giftCard = try container.decode(GiftCard.self, forKey: .giftCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                docketNumber = try container.decode(String.self, forKey: .docketNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                b2BPoDetails = try container.decode(B2BPODetails.self, forKey: .b2BPoDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(partialCanRet, forKey: .partialCanRet)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(customMessage, forKey: .customMessage)

            try? container.encodeIfPresent(giftCard, forKey: .giftCard)

            try? container.encodeIfPresent(docketNumber, forKey: .docketNumber)

            try? container.encodeIfPresent(b2BPoDetails, forKey: .b2BPoDetails)

            try? container.encodeIfPresent(groupId, forKey: .groupId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagMeta
         Used By: Order
     */

    class BagMeta: Codable {
        public var partialCanRet: Bool?

        public var extraMeta: [String: Any]?

        public var customJson: [String: Any]?

        public var customMessage: String?

        public var giftCard: GiftCard?

        public var docketNumber: String?

        public var b2BPoDetails: B2BPODetails?

        public var groupId: String?

        public enum CodingKeys: String, CodingKey {
            case partialCanRet = "partial_can_ret"

            case extraMeta = "extra_meta"

            case customJson = "custom_json"

            case customMessage = "custom_message"

            case giftCard = "gift_card"

            case docketNumber = "docket_number"

            case b2BPoDetails = "b2b_po_details"

            case groupId = "group_id"
        }

        public init(b2BPoDetails: B2BPODetails? = nil, customJson: [String: Any]? = nil, customMessage: String? = nil, docketNumber: String? = nil, extraMeta: [String: Any]? = nil, giftCard: GiftCard? = nil, groupId: String? = nil, partialCanRet: Bool? = nil) {
            self.partialCanRet = partialCanRet

            self.extraMeta = extraMeta

            self.customJson = customJson

            self.customMessage = customMessage

            self.giftCard = giftCard

            self.docketNumber = docketNumber

            self.b2BPoDetails = b2BPoDetails

            self.groupId = groupId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                partialCanRet = try container.decode(Bool.self, forKey: .partialCanRet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMessage = try container.decode(String.self, forKey: .customMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                giftCard = try container.decode(GiftCard.self, forKey: .giftCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                docketNumber = try container.decode(String.self, forKey: .docketNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                b2BPoDetails = try container.decode(B2BPODetails.self, forKey: .b2BPoDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(partialCanRet, forKey: .partialCanRet)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(customMessage, forKey: .customMessage)

            try? container.encodeIfPresent(giftCard, forKey: .giftCard)

            try? container.encodeIfPresent(docketNumber, forKey: .docketNumber)

            try? container.encodeIfPresent(b2BPoDetails, forKey: .b2BPoDetails)

            try? container.encodeIfPresent(groupId, forKey: .groupId)
        }
    }
}
