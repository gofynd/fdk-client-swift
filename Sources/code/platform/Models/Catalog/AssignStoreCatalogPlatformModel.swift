

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AssignStore
         Used By: Catalog
     */

    class AssignStore: Codable {
        public var pincode: String

        public var storeIds: [Int]?

        public var articles: [AssignStoreArticle]

        public var channelIdentifier: String?

        public var channelType: String?

        public var appId: String

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case storeIds = "store_ids"

            case articles

            case channelIdentifier = "channel_identifier"

            case channelType = "channel_type"

            case appId = "app_id"

            case companyId = "company_id"
        }

        public init(appId: String, articles: [AssignStoreArticle], channelIdentifier: String? = nil, channelType: String? = nil, companyId: Int? = nil, pincode: String, storeIds: [Int]? = nil) {
            self.pincode = pincode

            self.storeIds = storeIds

            self.articles = articles

            self.channelIdentifier = channelIdentifier

            self.channelType = channelType

            self.appId = appId

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([AssignStoreArticle].self, forKey: .articles)

            do {
                channelIdentifier = try container.decode(String.self, forKey: .channelIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(channelIdentifier, forKey: .channelIdentifier)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AssignStore
         Used By: Catalog
     */

    class AssignStore: Codable {
        public var pincode: String

        public var storeIds: [Int]?

        public var articles: [AssignStoreArticle]

        public var channelIdentifier: String?

        public var channelType: String?

        public var appId: String

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case storeIds = "store_ids"

            case articles

            case channelIdentifier = "channel_identifier"

            case channelType = "channel_type"

            case appId = "app_id"

            case companyId = "company_id"
        }

        public init(appId: String, articles: [AssignStoreArticle], channelIdentifier: String? = nil, channelType: String? = nil, companyId: Int? = nil, pincode: String, storeIds: [Int]? = nil) {
            self.pincode = pincode

            self.storeIds = storeIds

            self.articles = articles

            self.channelIdentifier = channelIdentifier

            self.channelType = channelType

            self.appId = appId

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([AssignStoreArticle].self, forKey: .articles)

            do {
                channelIdentifier = try container.decode(String.self, forKey: .channelIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(channelIdentifier, forKey: .channelIdentifier)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
