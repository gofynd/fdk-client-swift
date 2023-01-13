

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleStoreResponse
         Used By: Catalog
     */

    class ArticleStoreResponse: Codable {
        public var name: String?

        public var integrationType: StoreIntegrationType?

        public var storeType: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case integrationType = "integration_type"

            case storeType = "store_type"

            case uid
        }

        public init(integrationType: StoreIntegrationType? = nil, name: String? = nil, storeType: String? = nil, uid: Int? = nil) {
            self.name = name

            self.integrationType = integrationType

            self.storeType = storeType

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                integrationType = try container.decode(StoreIntegrationType.self, forKey: .integrationType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(integrationType, forKey: .integrationType)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
