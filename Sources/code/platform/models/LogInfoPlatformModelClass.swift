

import Foundation
public extension PlatformClient {
    /*
         Model: LogInfo
         Used By: Analytics
     */

    class LogInfo: Codable {
        public var id: String?

        public var status: String?

        public var eventType: String?

        public var marketplaceName: String?

        public var event: String?

        public var traceId: String?

        public var companyId: Double?

        public var brandId: Double?

        public var storeCode: String?

        public var storeId: Double?

        public var itemId: Double?

        public var articleId: String?

        public var sellerIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case status

            case eventType = "event_type"

            case marketplaceName = "marketplace_name"

            case event

            case traceId = "trace_id"

            case companyId = "company_id"

            case brandId = "brand_id"

            case storeCode = "store_code"

            case storeId = "store_id"

            case itemId = "item_id"

            case articleId = "article_id"

            case sellerIdentifier = "seller_identifier"
        }

        public init(articleId: String? = nil, brandId: Double? = nil, companyId: Double? = nil, event: String? = nil, eventType: String? = nil, itemId: Double? = nil, marketplaceName: String? = nil, sellerIdentifier: String? = nil, status: String? = nil, storeCode: String? = nil, storeId: Double? = nil, traceId: String? = nil, id: String? = nil) {
            self.id = id

            self.status = status

            self.eventType = eventType

            self.marketplaceName = marketplaceName

            self.event = event

            self.traceId = traceId

            self.companyId = companyId

            self.brandId = brandId

            self.storeCode = storeCode

            self.storeId = storeId

            self.itemId = itemId

            self.articleId = articleId

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventType = try container.decode(String.self, forKey: .eventType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceName = try container.decode(String.self, forKey: .marketplaceName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                event = try container.decode(String.self, forKey: .event)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Double.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode(Double.self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Double.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Double.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleId = try container.decode(String.self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(marketplaceName, forKey: .marketplaceName)

            try? container.encodeIfPresent(event, forKey: .event)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
