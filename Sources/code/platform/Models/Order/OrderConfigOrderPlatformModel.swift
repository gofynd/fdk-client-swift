

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderConfig
         Used By: Order
     */

    class OrderConfig: Codable {
        public var affiliate: Affiliate

        public var affiliateStoreIdMapping: [AffiliateStoreIdMapping]

        public var bagEndState: String?

        public var storeLookup: String?

        public var createUser: Bool?

        public var articleLookup: String?

        public enum CodingKeys: String, CodingKey {
            case affiliate

            case affiliateStoreIdMapping = "affiliate_store_id_mapping"

            case bagEndState = "bag_end_state"

            case storeLookup = "store_lookup"

            case createUser = "create_user"

            case articleLookup = "article_lookup"
        }

        public init(affiliate: Affiliate, affiliateStoreIdMapping: [AffiliateStoreIdMapping], articleLookup: String? = nil, bagEndState: String? = nil, createUser: Bool? = nil, storeLookup: String? = nil) {
            self.affiliate = affiliate

            self.affiliateStoreIdMapping = affiliateStoreIdMapping

            self.bagEndState = bagEndState

            self.storeLookup = storeLookup

            self.createUser = createUser

            self.articleLookup = articleLookup
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliate = try container.decode(Affiliate.self, forKey: .affiliate)

            affiliateStoreIdMapping = try container.decode([AffiliateStoreIdMapping].self, forKey: .affiliateStoreIdMapping)

            do {
                bagEndState = try container.decode(String.self, forKey: .bagEndState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            do {
                articleLookup = try container.decode(String.self, forKey: .articleLookup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliate, forKey: .affiliate)

            try? container.encodeIfPresent(affiliateStoreIdMapping, forKey: .affiliateStoreIdMapping)

            try? container.encodeIfPresent(bagEndState, forKey: .bagEndState)

            try? container.encodeIfPresent(storeLookup, forKey: .storeLookup)

            try? container.encodeIfPresent(createUser, forKey: .createUser)

            try? container.encodeIfPresent(articleLookup, forKey: .articleLookup)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderConfig
         Used By: Order
     */

    class OrderConfig: Codable {
        public var affiliate: Affiliate

        public var affiliateStoreIdMapping: [AffiliateStoreIdMapping]

        public var bagEndState: String?

        public var storeLookup: String?

        public var createUser: Bool?

        public var articleLookup: String?

        public enum CodingKeys: String, CodingKey {
            case affiliate

            case affiliateStoreIdMapping = "affiliate_store_id_mapping"

            case bagEndState = "bag_end_state"

            case storeLookup = "store_lookup"

            case createUser = "create_user"

            case articleLookup = "article_lookup"
        }

        public init(affiliate: Affiliate, affiliateStoreIdMapping: [AffiliateStoreIdMapping], articleLookup: String? = nil, bagEndState: String? = nil, createUser: Bool? = nil, storeLookup: String? = nil) {
            self.affiliate = affiliate

            self.affiliateStoreIdMapping = affiliateStoreIdMapping

            self.bagEndState = bagEndState

            self.storeLookup = storeLookup

            self.createUser = createUser

            self.articleLookup = articleLookup
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliate = try container.decode(Affiliate.self, forKey: .affiliate)

            affiliateStoreIdMapping = try container.decode([AffiliateStoreIdMapping].self, forKey: .affiliateStoreIdMapping)

            do {
                bagEndState = try container.decode(String.self, forKey: .bagEndState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            do {
                articleLookup = try container.decode(String.self, forKey: .articleLookup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliate, forKey: .affiliate)

            try? container.encodeIfPresent(affiliateStoreIdMapping, forKey: .affiliateStoreIdMapping)

            try? container.encodeIfPresent(bagEndState, forKey: .bagEndState)

            try? container.encodeIfPresent(storeLookup, forKey: .storeLookup)

            try? container.encodeIfPresent(createUser, forKey: .createUser)

            try? container.encodeIfPresent(articleLookup, forKey: .articleLookup)
        }
    }
}
