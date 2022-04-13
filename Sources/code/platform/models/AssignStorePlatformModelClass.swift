import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: AssignStore
         Used By: Catalog
     */

    class AssignStore: Codable {
        public var articles: [AssignStoreArticle]

        public var storeIds: [Int]?

        public var pincode: String

        public var companyId: Int?

        public var channelIdentifier: String?

        public var appId: String

        public var channelType: String?

        public enum CodingKeys: String, CodingKey {
            case articles

            case storeIds = "store_ids"

            case pincode

            case companyId = "company_id"

            case channelIdentifier = "channel_identifier"

            case appId = "app_id"

            case channelType = "channel_type"
        }

        public init(appId: String, articles: [AssignStoreArticle], channelIdentifier: String?, channelType: String?, companyId: Int?, pincode: String, storeIds: [Int]?) {
            self.articles = articles

            self.storeIds = storeIds

            self.pincode = pincode

            self.companyId = companyId

            self.channelIdentifier = channelIdentifier

            self.appId = appId

            self.channelType = channelType
        }

        public func duplicate() -> AssignStore {
            let dict = self.dictionary!
            let copy = AssignStore(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articles = try container.decode([AssignStoreArticle].self, forKey: .articles)

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

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

            appId = try container.decode(String.self, forKey: .appId)

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channelIdentifier, forKey: .channelIdentifier)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(channelType, forKey: .channelType)
        }
    }
}
