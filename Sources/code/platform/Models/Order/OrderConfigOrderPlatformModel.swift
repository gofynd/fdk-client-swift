

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderConfig
         Used By: Order
     */

    class OrderConfig: Codable {
        public var storeLookup: String?

        public var createUser: Bool?

        public var affiliate: Affiliate

        public var articleLookup: String?

        public var affiliateStoreIdMapping: [AffiliateStoreIdMapping]

        public var bagEndState: String?

        public enum CodingKeys: String, CodingKey {
            case storeLookup = "store_lookup"

            case createUser = "create_user"

            case affiliate

            case articleLookup = "article_lookup"

            case affiliateStoreIdMapping = "affiliate_store_id_mapping"

            case bagEndState = "bag_end_state"
        }

        public init(affiliate: Affiliate, affiliateStoreIdMapping: [AffiliateStoreIdMapping], articleLookup: String? = nil, bagEndState: String? = nil, createUser: Bool? = nil, storeLookup: String? = nil) {
            self.storeLookup = storeLookup

            self.createUser = createUser

            self.affiliate = affiliate

            self.articleLookup = articleLookup

            self.affiliateStoreIdMapping = affiliateStoreIdMapping

            self.bagEndState = bagEndState
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeLookup = try container.decode(String.self, forKey: .storeLookup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createUser = try container.decode(Bool.self, forKey: .createUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliate = try container.decode(Affiliate.self, forKey: .affiliate)

            do {
                articleLookup = try container.decode(String.self, forKey: .articleLookup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreIdMapping = try container.decode([AffiliateStoreIdMapping].self, forKey: .affiliateStoreIdMapping)

            do {
                bagEndState = try container.decode(String.self, forKey: .bagEndState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeLookup, forKey: .storeLookup)

            try? container.encodeIfPresent(createUser, forKey: .createUser)

            try? container.encodeIfPresent(affiliate, forKey: .affiliate)

            try? container.encodeIfPresent(articleLookup, forKey: .articleLookup)

            try? container.encodeIfPresent(affiliateStoreIdMapping, forKey: .affiliateStoreIdMapping)

            try? container.encodeIfPresent(bagEndState, forKey: .bagEndState)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderConfig
         Used By: Order
     */

    class OrderConfig: Codable {
        public var storeLookup: String?

        public var createUser: Bool?

        public var affiliate: Affiliate

        public var articleLookup: String?

        public var affiliateStoreIdMapping: [AffiliateStoreIdMapping]

        public var bagEndState: String?

        public enum CodingKeys: String, CodingKey {
            case storeLookup = "store_lookup"

            case createUser = "create_user"

            case affiliate

            case articleLookup = "article_lookup"

            case affiliateStoreIdMapping = "affiliate_store_id_mapping"

            case bagEndState = "bag_end_state"
        }

        public init(affiliate: Affiliate, affiliateStoreIdMapping: [AffiliateStoreIdMapping], articleLookup: String? = nil, bagEndState: String? = nil, createUser: Bool? = nil, storeLookup: String? = nil) {
            self.storeLookup = storeLookup

            self.createUser = createUser

            self.affiliate = affiliate

            self.articleLookup = articleLookup

            self.affiliateStoreIdMapping = affiliateStoreIdMapping

            self.bagEndState = bagEndState
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeLookup = try container.decode(String.self, forKey: .storeLookup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createUser = try container.decode(Bool.self, forKey: .createUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliate = try container.decode(Affiliate.self, forKey: .affiliate)

            do {
                articleLookup = try container.decode(String.self, forKey: .articleLookup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreIdMapping = try container.decode([AffiliateStoreIdMapping].self, forKey: .affiliateStoreIdMapping)

            do {
                bagEndState = try container.decode(String.self, forKey: .bagEndState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeLookup, forKey: .storeLookup)

            try? container.encodeIfPresent(createUser, forKey: .createUser)

            try? container.encodeIfPresent(affiliate, forKey: .affiliate)

            try? container.encodeIfPresent(articleLookup, forKey: .articleLookup)

            try? container.encodeIfPresent(affiliateStoreIdMapping, forKey: .affiliateStoreIdMapping)

            try? container.encodeIfPresent(bagEndState, forKey: .bagEndState)
        }
    }
}
