

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CreateSellerCreditNoteConfig
         Used By: Finance
     */

    class CreateSellerCreditNoteConfig: Codable {
        public var orderingChannel: [String]?

        public var isCnAsRefundMethod: Bool?

        public var validity: Int?

        public var sourceChannel: [String]?

        public var affiliateId: String?

        public var notificationEvents: CreditNoteConfigNotificationEvents?

        public var salesChannelName: String?

        public var slugValues: [String]?

        public var currencyType: String?

        public var sellerId: Int?

        public enum CodingKeys: String, CodingKey {
            case orderingChannel = "ordering_channel"

            case isCnAsRefundMethod = "is_cn_as_refund_method"

            case validity

            case sourceChannel = "source_channel"

            case affiliateId = "affiliate_id"

            case notificationEvents = "notification_events"

            case salesChannelName = "sales_channel_name"

            case slugValues = "slug_values"

            case currencyType = "currency_type"

            case sellerId = "seller_id"
        }

        public init(affiliateId: String? = nil, currencyType: String? = nil, isCnAsRefundMethod: Bool? = nil, notificationEvents: CreditNoteConfigNotificationEvents? = nil, orderingChannel: [String]? = nil, salesChannelName: String? = nil, sellerId: Int? = nil, slugValues: [String]? = nil, sourceChannel: [String]? = nil, validity: Int? = nil) {
            self.orderingChannel = orderingChannel

            self.isCnAsRefundMethod = isCnAsRefundMethod

            self.validity = validity

            self.sourceChannel = sourceChannel

            self.affiliateId = affiliateId

            self.notificationEvents = notificationEvents

            self.salesChannelName = salesChannelName

            self.slugValues = slugValues

            self.currencyType = currencyType

            self.sellerId = sellerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderingChannel = try container.decode([String].self, forKey: .orderingChannel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isCnAsRefundMethod = try container.decode(Bool.self, forKey: .isCnAsRefundMethod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                validity = try container.decode(Int.self, forKey: .validity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sourceChannel = try container.decode([String].self, forKey: .sourceChannel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notificationEvents = try container.decode(CreditNoteConfigNotificationEvents.self, forKey: .notificationEvents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                salesChannelName = try container.decode(String.self, forKey: .salesChannelName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slugValues = try container.decode([String].self, forKey: .slugValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyType = try container.decode(String.self, forKey: .currencyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerId = try container.decode(Int.self, forKey: .sellerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(isCnAsRefundMethod, forKey: .isCnAsRefundMethod)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(sourceChannel, forKey: .sourceChannel)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(notificationEvents, forKey: .notificationEvents)

            try? container.encodeIfPresent(salesChannelName, forKey: .salesChannelName)

            try? container.encodeIfPresent(slugValues, forKey: .slugValues)

            try? container.encodeIfPresent(currencyType, forKey: .currencyType)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
        }
    }
}
