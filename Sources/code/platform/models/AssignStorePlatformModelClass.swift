

import Foundation
public extension PlatformClient {
    /*
         Model: AssignStore
         Used By: Catalog
     */

    class AssignStore: Codable {
        public var companyId: Int?

        public var articles: [AssignStoreArticle]

        public var channelType: String?

        public var appId: String

        public var storeIds: [Int]?

        public var channelIdentifier: String?

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case articles

            case channelType = "channel_type"

            case appId = "app_id"

            case storeIds = "store_ids"

            case channelIdentifier = "channel_identifier"

            case pincode
        }

        public init(appId: String, articles: [AssignStoreArticle], channelIdentifier: String? = nil, channelType: String? = nil, companyId: Int? = nil, pincode: String, storeIds: [Int]? = nil) {
            self.companyId = companyId

            self.articles = articles

            self.channelType = channelType

            self.appId = appId

            self.storeIds = storeIds

            self.channelIdentifier = channelIdentifier

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([AssignStoreArticle].self, forKey: .articles)

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelIdentifier = try container.decode(String.self, forKey: .channelIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(channelIdentifier, forKey: .channelIdentifier)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
